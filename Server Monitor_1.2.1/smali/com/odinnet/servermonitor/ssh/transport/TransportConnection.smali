.class public Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;
.super Ljava/lang/Object;
.source "TransportConnection.java"


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# instance fields
.field can_compress:Z

.field cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

.field cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

.field csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

.field recv_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

.field recv_comp_buffer:[B

.field recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

.field recv_mac_buffer:[B

.field recv_mac_buffer_cmp:[B

.field final recv_packet_header_buffer:[B

.field recv_packet_header_present:Z

.field recv_padd_blocksize:I

.field final recv_padding_buffer:[B

.field recv_seq_number:I

.field final rnd:Ljava/security/SecureRandom;

.field send_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

.field send_comp_buffer:[B

.field send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

.field send_mac_buffer:[B

.field final send_packet_header_buffer:[B

.field send_padd_blocksize:I

.field final send_padding_buffer:[B

.field send_seq_number:I

.field useRandomPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x100

    const/16 v0, 0x8

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_seq_number:I

    .line 31
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_seq_number:I

    .line 37
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->useRandomPadding:Z

    .line 45
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    .line 53
    iput v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padd_blocksize:I

    .line 55
    iput-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .line 57
    iput-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .line 59
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->can_compress:Z

    .line 67
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    .line 69
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    .line 71
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padding_buffer:[B

    .line 73
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    .line 75
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_present:Z

    .line 83
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    .line 84
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;-><init>()V

    invoke-direct {v0, v1, p2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    .line 85
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    .line 86
    return-void
.end method


# virtual methods
.method public changeRecvCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V
    .locals 3
    .param p1, "bc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .param p2, "mac"    # Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 90
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->changeCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;)V

    .line 91
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    .line 92
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer:[B

    .line 93
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_1
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    .line 94
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padd_blocksize:I

    .line 95
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padd_blocksize:I

    if-ge v0, v1, :cond_0

    .line 96
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padd_blocksize:I

    .line 97
    :cond_0
    return-void

    :cond_1
    move-object v0, v2

    .line 92
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 93
    goto :goto_1
.end method

.method public changeRecvCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V
    .locals 1
    .param p1, "comp"    # Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/compression/ICompressor;->getBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_comp_buffer:[B

    .line 122
    :cond_0
    return-void
.end method

.method public changeSendCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V
    .locals 2
    .param p1, "bc"    # Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .param p2, "mac"    # Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    .prologue
    const/16 v1, 0x8

    .line 101
    instance-of v0, p1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->useRandomPadding:Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    invoke-virtual {v0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;->changeCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;)V

    .line 109
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    .line 110
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->size()I

    move-result v0

    new-array v0, v0, [B

    :goto_0
    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac_buffer:[B

    .line 111
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    .line 112
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    if-ge v0, v1, :cond_1

    .line 113
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    .line 114
    :cond_1
    return-void

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeSendCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V
    .locals 1
    .param p1, "comp"    # Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    .line 128
    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Lcom/odinnet/servermonitor/ssh/compression/ICompressor;->getBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp_buffer:[B

    .line 130
    :cond_0
    return-void
.end method

.method public getPacketOverheadEstimate()I
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac_buffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public peekNextMessageLength()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, ")"

    .line 239
    iget-boolean v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_present:Z

    if-nez v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v7, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->read([BII)I

    .line 242
    iput-boolean v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_present:Z

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int v0, v3, v4

    .line 249
    .local v0, "packet_length":I
    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 251
    .local v1, "padding_length":I
    const v3, 0x88b8

    if-gt v0, v3, :cond_1

    const/16 v3, 0xc

    if-ge v0, v3, :cond_2

    .line 252
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal packet size! ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 254
    :cond_2
    sub-int v3, v0, v1

    sub-int v2, v3, v6

    .line 256
    .local v2, "payload_length":I
    if-gez v2, :cond_3

    .line 257
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal padding_length in packet from remote ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 259
    :cond_3
    return v2
.end method

.method public receiveMessage([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, ")"

    .line 264
    iget-boolean v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_present:Z

    if-nez v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v5, v6, v9, v11}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->read([BII)I

    .line 271
    :goto_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v5, v5, v9

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    aget-byte v6, v6, v10

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 275
    .local v1, "packet_length":I
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    const/4 v6, 0x4

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 277
    .local v2, "padding_length":I
    const v5, 0x88b8

    if-gt v1, v5, :cond_0

    const/16 v5, 0xc

    if-ge v1, v5, :cond_2

    .line 278
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal packet size! ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    .end local v1    # "packet_length":I
    .end local v2    # "padding_length":I
    :cond_1
    iput-boolean v9, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_present:Z

    goto :goto_0

    .line 280
    .restart local v1    # "packet_length":I
    .restart local v2    # "padding_length":I
    :cond_2
    sub-int v5, v1, v2

    sub-int v3, v5, v10

    .line 282
    .local v3, "payload_length":I
    if-gez v3, :cond_3

    .line 283
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal padding_length in packet from remote ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    :cond_3
    if-lt v3, p3, :cond_4

    .line 286
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive buffer too small ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", need "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 288
    :cond_4
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    invoke-virtual {v5, p1, p2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->read([BII)I

    .line 289
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v5, v6, v9, v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->read([BII)I

    .line 291
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    if-eqz v5, :cond_6

    .line 293
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cis:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer:[B

    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v9, v7}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherInputStream;->readPlain([BII)I

    .line 295
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_seq_number:I

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->initMac(I)V

    .line 296
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_packet_header_buffer:[B

    invoke-virtual {v5, v6, v9, v11}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->update([BII)V

    .line 297
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    invoke-virtual {v5, p1, p2, v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->update([BII)V

    .line 298
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_padding_buffer:[B

    invoke-virtual {v5, v6, v9, v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->update([BII)V

    .line 299
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    invoke-virtual {v5, v6, v9}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getMac([BI)V

    .line 301
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer:[B

    array-length v5, v5

    if-ge v0, v5, :cond_6

    .line 303
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer:[B

    aget-byte v5, v5, v0

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_mac_buffer_cmp:[B

    aget-byte v6, v6, v0

    if-eq v5, v6, :cond_5

    .line 304
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Remote sent corrupt MAC."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    .end local v0    # "i":I
    :cond_6
    iget v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_seq_number:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_seq_number:I

    .line 310
    sget-object v5, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 312
    sget-object v5, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x5a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/odinnet/servermonitor/ssh/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes payload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 316
    :cond_7
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->can_compress:Z

    if-eqz v5, :cond_9

    .line 317
    new-array v4, v10, [I

    aput v3, v4, v9

    .line 318
    .local v4, "uncomp_len":[I
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->recv_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    invoke-interface {v5, p1, p2, v4}, Lcom/odinnet/servermonitor/ssh/compression/ICompressor;->uncompress([BI[I)[B

    move-result-object p1

    .line 320
    if-nez p1, :cond_8

    .line 321
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Error while inflating remote data"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 323
    :cond_8
    aget v5, v4, v9

    .line 326
    .end local v4    # "uncomp_len":[I
    :goto_2
    return v5

    :cond_9
    move v5, v3

    goto :goto_2
.end method

.method public sendMessage([B)V
    .locals 2
    .param p1, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->sendMessage([BIII)V

    .line 135
    return-void
.end method

.method public sendMessage([BII)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->sendMessage([BIII)V

    .line 140
    return-void
.end method

.method public sendMessage([BIII)V
    .locals 11
    .param p1, "message"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "padd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 150
    if-ge p4, v9, :cond_5

    .line 151
    const/4 p4, 0x4

    .line 155
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->can_compress:Z

    if-eqz v5, :cond_2

    .line 156
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp_buffer:[B

    array-length v5, v5

    array-length v6, p1

    add-int/lit16 v6, v6, 0x400

    if-ge v5, v6, :cond_1

    .line 157
    array-length v5, p1

    add-int/lit16 v5, v5, 0x400

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp_buffer:[B

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp:Lcom/odinnet/servermonitor/ssh/compression/ICompressor;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp_buffer:[B

    invoke-interface {v5, p1, p2, p3, v6}, Lcom/odinnet/servermonitor/ssh/compression/ICompressor;->compress([BII[B)I

    move-result p3

    .line 159
    iget-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_comp_buffer:[B

    .line 162
    :cond_2
    add-int/lit8 v5, p3, 0x5

    add-int v1, v5, p4

    .line 164
    .local v1, "packet_len":I
    iget v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    rem-int v4, v1, v5

    .line 166
    .local v4, "slack":I
    if-eqz v4, :cond_3

    .line 168
    iget v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padd_blocksize:I

    sub-int/2addr v5, v4

    add-int/2addr v1, v5

    .line 171
    :cond_3
    const/16 v5, 0x10

    if-ge v1, v5, :cond_4

    .line 172
    const/16 v1, 0x10

    .line 174
    :cond_4
    add-int/lit8 v5, p3, 0x5

    sub-int v2, v1, v5

    .line 176
    .local v2, "padd_len":I
    iget-boolean v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->useRandomPadding:Z

    if-eqz v5, :cond_6

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 188
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    .line 189
    .local v3, "r":I
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v0

    .line 190
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v3, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 191
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x2

    shr-int/lit8 v7, v3, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 192
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    add-int/lit8 v6, v0, 0x3

    shr-int/lit8 v7, v3, 0x18

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 178
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    .end local v1    # "packet_len":I
    .end local v2    # "padd_len":I
    .end local v3    # "r":I
    .end local v4    # "slack":I
    :cond_5
    const/16 v5, 0x40

    if-le p4, v5, :cond_0

    .line 153
    const/16 p4, 0x40

    goto :goto_0

    .line 198
    .restart local v1    # "packet_len":I
    .restart local v2    # "padd_len":I
    .restart local v4    # "slack":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v2, :cond_7

    .line 199
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    aput-byte v8, v5, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_7
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    sub-int v6, v1, v9

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 207
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x1

    sub-int v7, v1, v9

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 208
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x2

    sub-int v7, v1, v9

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 209
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    const/4 v6, 0x3

    sub-int v7, v1, v9

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 210
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    int-to-byte v6, v2

    aput-byte v6, v5, v9

    .line 212
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v5, v6, v8, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 213
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 214
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v6, v8, v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;->write([BII)V

    .line 216
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    if-eqz v5, :cond_8

    .line 218
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_seq_number:I

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->initMac(I)V

    .line 219
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_packet_header_buffer:[B

    invoke-virtual {v5, v6, v8, v10}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->update([BII)V

    .line 220
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    invoke-virtual {v5, p1, p2, p3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->update([BII)V

    .line 221
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_padding_buffer:[B

    invoke-virtual {v5, v6, v8, v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->update([BII)V

    .line 223
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac:Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac_buffer:[B

    invoke-virtual {v5, v6, v8}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getMac([BI)V

    .line 224
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac_buffer:[B

    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_mac_buffer:[B

    array-length v7, v7

    invoke-virtual {v5, v6, v8, v7}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;->writePlain([BII)V

    .line 227
    :cond_8
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->cos:Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CipherOutputStream;->flush()V

    .line 229
    sget-object v5, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 231
    sget-object v5, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v6, 0x5a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, p1, p2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lcom/odinnet/servermonitor/ssh/packets/Packets;->getMessageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes payload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 234
    :cond_9
    iget v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_seq_number:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->send_seq_number:I

    .line 235
    return-void
.end method

.method public startCompression()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportConnection;->can_compress:Z

    .line 335
    return-void
.end method
