.class public Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;
.super Ljava/lang/Object;
.source "CompressionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    }
.end annotation


# static fields
.field static compressors:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-string v4, "com.odinnet.servermonitor.ssh.compression.Zlib"

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    .line 45
    sget-object v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib"

    const-string v3, "com.odinnet.servermonitor.ssh.compression.Zlib"

    invoke-direct {v1, v2, v4}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    const-string v2, "zlib@openssh.com"

    const-string v3, "com.odinnet.servermonitor.ssh.compression.Zlib"

    invoke-direct {v1, v2, v4}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    const-string v2, "none"

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static checkCompressorList([Ljava/lang/String;)V
    .locals 2
    .param p0, "compressorCandidates"    # [Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 64
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public static createCompressor(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    .locals 7
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    move-result-object v1

    .line 72
    .local v1, "ce":Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    const-string v4, ""

    iget-object v5, v1, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const/4 v4, 0x0

    .line 78
    :goto_0
    return-object v4

    .line 75
    :cond_0
    iget-object v4, v1, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;->compressorClass:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "cmp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    move-object v4, v2

    .line 78
    goto :goto_0

    .line 80
    .end local v0    # "cc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "ce":Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    .end local v2    # "cmp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot instantiate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getDefaultCompressorList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    sget-object v3, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 53
    .local v2, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 55
    sget-object v3, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    .line 56
    .local v0, "ce":Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "ce":Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    :cond_0
    return-object v2
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 90
    sget-object v2, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->compressors:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;

    .line 91
    .local v0, "ce":Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    iget-object v2, v0, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    return-object v0

    .line 88
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "ce":Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory$CompressorEntry;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unkown algorithm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
