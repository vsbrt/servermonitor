.class public Lcom/odinnet/servermonitor/ssh/compression/Zlib;
.super Ljava/lang/Object;
.source "Zlib.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/compression/ICompressor;


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x1000

.field private static final LEVEL:I = 0x5


# instance fields
.field private deflate:Lcom/jcraft/jzlib/ZStream;

.field private deflate_tmpbuf:[B

.field private inflate:Lcom/jcraft/jzlib/ZStream;

.field private inflate_tmpbuf:[B

.field private inflated_buf:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    .line 40
    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    .line 42
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    .line 43
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    .line 45
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate_tmpbuf:[B

    .line 46
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate_tmpbuf:[B

    .line 47
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    .line 48
    return-void
.end method


# virtual methods
.method public compress([BII[B)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 56
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput p2, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 57
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    sub-int v2, p3, p2

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 59
    array-length v1, p1

    add-int/lit16 v1, v1, 0x400

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate_tmpbuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 60
    array-length v1, p1

    add-int/lit16 v1, v1, 0x400

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate_tmpbuf:[B

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate_tmpbuf:[B

    iput-object v2, v1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 64
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iput v3, v1, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 65
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    array-length v2, p4

    iput v2, v1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 67
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "compress: compression failure"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget v1, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-lez v1, :cond_2

    .line 72
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "compress: deflated data too large"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    :cond_2
    array-length v1, p4

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate:Lcom/jcraft/jzlib/ZStream;

    iget v2, v2, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v0, v1, v2

    .line 77
    .local v0, "outputlen":I
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->deflate_tmpbuf:[B

    invoke-static {v1, v3, p4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x1000

    return v0
.end method

.method public uncompress([BI[I)[B
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # [I

    .prologue
    const/16 v7, 0x1000

    const/4 v6, 0x0

    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "inflated_end":I
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v3, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    .line 86
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput p2, v3, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 87
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    aget v4, p3, v6

    iput v4, v3, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate_tmpbuf:[B

    iput-object v4, v3, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    .line 91
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput v6, v3, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    .line 92
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iput v7, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    .line 93
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v2

    .line 94
    .local v2, "status":I
    sparse-switch v2, :sswitch_data_0

    .line 121
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uncompress: inflate returnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 96
    :sswitch_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    array-length v3, v3

    add-int/lit16 v4, v1, 0x1000

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 98
    add-int/lit16 v3, v1, 0x1000

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v3, v4

    new-array v0, v3, [B

    .line 100
    .local v0, "foo":[B
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    invoke-static {v3, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    .line 103
    .end local v0    # "foo":[B
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate_tmpbuf:[B

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v5, v7, v5

    invoke-static {v3, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflate:Lcom/jcraft/jzlib/ZStream;

    iget v3, v3, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v3, v7, v3

    add-int/2addr v1, v3

    .line 106
    aput v1, p3, v6

    goto :goto_0

    .line 109
    :sswitch_1
    array-length v3, p1

    sub-int/2addr v3, p2

    if-le v1, v3, :cond_1

    .line 110
    add-int v3, v1, p2

    new-array v0, v3, [B

    .line 111
    .restart local v0    # "foo":[B
    invoke-static {p1, v6, v0, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    invoke-static {v3, v6, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object p1, v0

    .line 118
    .end local v0    # "foo":[B
    :goto_2
    aput v1, p3, v6

    move-object v3, p1

    .line 119
    goto :goto_1

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/compression/Zlib;->inflated_buf:[B

    invoke-static {v3, v6, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 94
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
