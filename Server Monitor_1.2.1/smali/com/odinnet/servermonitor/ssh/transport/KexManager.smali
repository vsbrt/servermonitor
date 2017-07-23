.class public Lcom/odinnet/servermonitor/ssh/transport/KexManager;
.super Ljava/lang/Object;
.source "KexManager.java"


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# instance fields
.field final accessLock:Ljava/lang/Object;

.field connectionClosed:Z

.field csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

.field final hostname:Ljava/lang/String;

.field ignore_next_kex_packet:Z

.field kexCount:I

.field km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

.field kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

.field lastConnInfo:Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

.field nextKEXcryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

.field nextKEXdhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

.field final port:I

.field final rnd:Ljava/security/SecureRandom;

.field sessionId:[B

.field final tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

.field verifier:Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Ljava/lang/String;ILcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "tm"    # Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
    .param p2, "csh"    # Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;
    .param p3, "initialCwl"    # Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "keyVerifier"    # Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;
    .param p7, "rnd"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kexCount:I

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->lastConnInfo:Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    .line 57
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->connectionClosed:Z

    .line 59
    iput-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->ignore_next_kex_packet:Z

    .line 74
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    .line 75
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    .line 76
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXcryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    .line 77
    new-instance v0, Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;-><init>()V

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXdhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .line 78
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->hostname:Ljava/lang/String;

    .line 79
    iput p5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->port:I

    .line 80
    iput-object p6, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifier:Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;

    .line 81
    iput-object p7, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    .line 82
    return-void
.end method

.method public static final checkKexAlgorithmList([Ljava/lang/String;)V
    .locals 4
    .param p0, "algos"    # [Ljava/lang/String;

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 334
    const-string v1, "diffie-hellman-group-exchange-sha1"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    const-string v1, "diffie-hellman-group14-sha1"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    const-string v1, "diffie-hellman-group1-sha1"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown kex algorithm \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_2
    return-void
.end method

.method public static final checkServerHostkeyAlgorithmsList([Ljava/lang/String;)V
    .locals 4
    .param p0, "algos"    # [Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 319
    const-string v1, "ssh-rsa"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ssh-dss"

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown server host key algorithm \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    return-void
.end method

.method private compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .param p1, "a"    # [Ljava/lang/String;
    .param p2, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 129
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 132
    :cond_1
    array-length v0, p1

    if-nez v0, :cond_2

    array-length v0, p2

    if-nez v0, :cond_2

    .line 133
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    array-length v0, p2

    if-nez v0, :cond_4

    :cond_3
    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_4
    aget-object v0, p1, v1

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private establishKeyMaterial()Z
    .locals 11

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v6

    .line 257
    .local v6, "mac_cs_key_len":I
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v4

    .line 258
    .local v4, "enc_cs_key_len":I
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, "enc_cs_block_len":I
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;->getKeyLen(Ljava/lang/String;)I

    move-result v9

    .line 261
    .local v9, "mac_sc_key_len":I
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getKeySize(Ljava/lang/String;)I

    move-result v7

    .line 262
    .local v7, "enc_sc_key_len":I
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getBlockSize(Ljava/lang/String;)I

    move-result v8

    .line 264
    .local v8, "enc_sc_block_len":I
    const-string v0, "SHA1"

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v1, v1, Lcom/odinnet/servermonitor/ssh/transport/KexState;->H:[B

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v2, v2, Lcom/odinnet/servermonitor/ssh/transport/KexState;->K:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->sessionId:[B

    invoke-static/range {v0 .. v9}, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->create(Ljava/lang/String;[BLjava/math/BigInteger;[BIIIIII)Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    move-result-object v0

    iput-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v0, 0x1

    .end local v4    # "enc_cs_key_len":I
    .end local v5    # "enc_cs_block_len":I
    .end local v6    # "mac_cs_key_len":I
    .end local v7    # "enc_sc_key_len":I
    .end local v8    # "enc_sc_block_len":I
    .end local v9    # "mac_sc_key_len":I
    :goto_0
    return v0

    .line 267
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 269
    .local v10, "e":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishKex()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->sessionId:[B

    if-nez v5, :cond_0

    .line 277
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->H:[B

    iput-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->sessionId:[B

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->establishKeyMaterial()Z

    .line 283
    new-instance v3, Lcom/odinnet/servermonitor/ssh/packets/PacketNewKeys;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketNewKeys;-><init>()V

    .line 284
    .local v3, "ign":Lcom/odinnet/servermonitor/ssh/packets/PacketNewKeys;
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketNewKeys;->getPayload()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V

    .line 292
    :try_start_0
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->enc_key_client_to_server:[B

    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    iget-object v8, v8, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->initial_iv_client_to_server:[B

    invoke-static {v5, v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    move-result-object v0

    .line 295
    .local v0, "cbc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    new-instance v4, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->integrity_key_client_to_server:[B

    invoke-direct {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V

    .line 297
    .local v4, "mac":Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-static {v5}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->createCompressor(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    .local v1, "comp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v5, v0, v4}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->changeSendCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V

    .line 306
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v5, v1}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->changeSendCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V

    .line 307
    iget-object v5, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->kexFinished()V

    .line 308
    return-void

    .line 300
    .end local v0    # "cbc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .end local v1    # "comp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    .end local v4    # "mac":Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 302
    .local v2, "e1":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Fatal error during MAC startup!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static final getDefaultKexAlgorithmList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "diffie-hellman-group-exchange-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "diffie-hellman-group14-sha1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "diffie-hellman-group1-sha1"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static final getDefaultServerHostkeyAlgorithmList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ssh-rsa"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ssh-dss"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "client"    # [Ljava/lang/String;
    .param p2, "server"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 113
    :cond_1
    array-length v2, p1

    if-nez v2, :cond_2

    .line 114
    const/4 v2, 0x0

    .line 121
    :goto_0
    return-object v2

    .line 116
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 118
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 120
    aget-object v2, p1, v0

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    aget-object v2, p1, v0

    goto :goto_0

    .line 118
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "j":I
    :cond_5
    new-instance v2, Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;

    invoke-direct {v2}, Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;-><init>()V

    throw v2
.end method

.method private isGuessOK(Lcom/odinnet/servermonitor/ssh/transport/KexParameters;Lcom/odinnet/servermonitor/ssh/transport/KexParameters;)Z
    .locals 3
    .param p1, "cpar"    # Lcom/odinnet/servermonitor/ssh/transport/KexParameters;
    .param p2, "spar"    # Lcom/odinnet/servermonitor/ssh/transport/KexParameters;

    .prologue
    const/4 v2, 0x0

    .line 143
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_1
    iget-object v0, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v1, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 162
    :goto_0
    return v0

    .line 151
    :cond_2
    iget-object v0, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object v1, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->compareFirstOfNameList([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 153
    goto :goto_0

    .line 162
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private mergeKexParameters(Lcom/odinnet/servermonitor/ssh/transport/KexParameters;Lcom/odinnet/servermonitor/ssh/transport/KexParameters;)Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;
    .locals 9
    .param p1, "client"    # Lcom/odinnet/servermonitor/ssh/transport/KexParameters;
    .param p2, "server"    # Lcom/odinnet/servermonitor/ssh/transport/KexParameters;

    .prologue
    const/4 v8, 0x0

    .line 167
    new-instance v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;-><init>()V

    .line 171
    .local v3, "np":Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;
    :try_start_0
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->kex_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    .line 173
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kex_algo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 175
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->server_host_key_algorithms:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    .line 178
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server_host_key_algo="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 180
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->encryption_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    .line 182
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->encryption_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    .line 185
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enc_algo_client_to_server="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 186
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enc_algo_server_to_client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 188
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->mac_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    .line 190
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->mac_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    .line 193
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mac_algo_client_to_server="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 194
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mac_algo_server_to_client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 196
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->compression_algorithms_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    .line 198
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->compression_algorithms_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    .line 201
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "comp_algo_client_to_server="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->comp_algo_client_to_server:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 202
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v5, 0x14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "comp_algo_server_to_client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/odinnet/servermonitor/ssh/transport/NegotiateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->languages_client_to_server:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;
    :try_end_1
    .catch Lcom/odinnet/servermonitor/ssh/transport/NegotiateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :goto_0
    :try_start_2
    iget-object v4, p1, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    iget-object v5, p2, Lcom/odinnet/servermonitor/ssh/transport/KexParameters;->languages_server_to_client:[Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->getFirstMatch([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;
    :try_end_2
    .catch Lcom/odinnet/servermonitor/ssh/transport/NegotiateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 230
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->isGuessOK(Lcom/odinnet/servermonitor/ssh/transport/KexParameters;Lcom/odinnet/servermonitor/ssh/transport/KexParameters;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->guessOK:Z

    :cond_0
    move-object v4, v3

    .line 233
    :goto_2
    return-object v4

    .line 205
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, "e":Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;
    move-object v4, v8

    .line 207
    goto :goto_2

    .line 215
    .end local v0    # "e":Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 217
    .local v1, "e1":Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;
    iput-object v8, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->lang_client_to_server:Ljava/lang/String;

    goto :goto_0

    .line 225
    .end local v1    # "e1":Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 227
    .local v2, "e2":Lcom/odinnet/servermonitor/ssh/transport/NegotiateException;
    iput-object v8, v3, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->lang_server_to_client:Ljava/lang/String;

    goto :goto_1
.end method

.method private verifySignature([B[B)Z
    .locals 7
    .param p1, "sig"    # [B
    .param p2, "hostkey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x32

    .line 349
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v5, "ssh-rsa"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->decodeSSHRSASignature([B)Lcom/odinnet/servermonitor/ssh/signature/RSASignature;

    move-result-object v3

    .line 352
    .local v3, "rs":Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    invoke-static {p2}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->decodeSSHRSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    move-result-object v2

    .line 354
    .local v2, "rpk":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const-string v5, "Verifying ssh-rsa signature"

    invoke-virtual {v4, v6, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->H:[B

    invoke-static {v4, v3, v2}, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->verifySignature([BLcom/odinnet/servermonitor/ssh/signature/RSASignature;Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;)Z

    move-result v4

    .line 366
    .end local v2    # "rpk":Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .end local v3    # "rs":Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    :goto_0
    return v4

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    const-string v5, "ssh-dss"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    invoke-static {p1}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->decodeSSHDSASignature([B)Lcom/odinnet/servermonitor/ssh/signature/DSASignature;

    move-result-object v1

    .line 362
    .local v1, "ds":Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    invoke-static {p2}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->decodeSSHDSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    move-result-object v0

    .line 364
    .local v0, "dpk":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    sget-object v4, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const-string v5, "Verifying ssh-dss signature"

    invoke-virtual {v4, v6, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 366
    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->H:[B

    invoke-static {v4, v1, v0}, Lcom/odinnet/servermonitor/ssh/signature/DSASHA1Verify;->verifySignature([BLcom/odinnet/servermonitor/ssh/signature/DSASignature;Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;)Z

    move-result v4

    goto :goto_0

    .line 369
    .end local v0    # "dpk":Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    .end local v1    # "ds":Lcom/odinnet/servermonitor/ssh/signature/DSASignature;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown server host key algorithm \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public getOrWaitForConnectionInfo(I)Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    .locals 3
    .param p1, "minKexCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->lastConnInfo:Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->lastConnInfo:Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    iget v1, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->keyExchangeCounter:I

    if-lt v1, p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->lastConnInfo:Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    monitor-exit v0

    return-object v1

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->connectionClosed:Z

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Key exchange was not finished, connection is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->getReasonClosedCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    .end local p0    # "this":Lcom/odinnet/servermonitor/ssh/transport/KexManager;
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 99
    .restart local p0    # "this":Lcom/odinnet/servermonitor/ssh/transport/KexManager;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized handleMessage([BI)V
    .locals 26
    .param p1, "msg"    # [B
    .param p2, "msglen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    monitor-enter p0

    if-nez p1, :cond_0

    .line 378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    const/4 v5, 0x1

    :try_start_1
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->connectionClosed:Z

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 382
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    :goto_0
    monitor-exit p0

    return-void

    .line 383
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    .end local p1    # "msg":[B
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 386
    .restart local p1    # "msg":[B
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    if-nez v4, :cond_1

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1

    .line 387
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected KEX message (type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 389
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->ignore_next_kex_packet:Z

    move v4, v0

    if-eqz v4, :cond_2

    .line 391
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->ignore_next_kex_packet:Z

    goto :goto_0

    .line 395
    :cond_2
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    const/16 v5, 0x14

    if-ne v4, v5, :cond_d

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    if-eqz v4, :cond_3

    .line 398
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected SSH_MSG_KEXINIT message during on-going kex exchange!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    if-nez v4, :cond_4

    .line 406
    new-instance v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;

    invoke-direct {v4}, Lcom/odinnet/servermonitor/ssh/transport/KexState;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXdhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    move-object v5, v0

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .line 408
    new-instance v20, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXcryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 409
    .local v20, "kip":Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, v20

    move-object v1, v4

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexState;->localKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V

    .line 413
    .end local v20    # "kip":Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;
    :cond_4
    new-instance v20, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;-><init>([BII)V

    .line 414
    .restart local v20    # "kip":Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, v20

    move-object v1, v4

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexState;->remoteKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->localKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getKexParameters()Lcom/odinnet/servermonitor/ssh/transport/KexParameters;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v6, v0

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/transport/KexState;->remoteKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getKexParameters()Lcom/odinnet/servermonitor/ssh/transport/KexParameters;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->mergeKexParameters(Lcom/odinnet/servermonitor/ssh/transport/KexParameters;Lcom/odinnet/servermonitor/ssh/transport/KexParameters;)Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    move-result-object v5

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    if-nez v4, :cond_5

    .line 419
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Cannot negotiate, proposals do not match."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->remoteKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->isFirst_kex_packet_follows()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-boolean v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->guessOK:Z

    if-nez v4, :cond_6

    .line 427
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->ignore_next_kex_packet:Z

    .line 430
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/DHGexParameters;->getMin_group_len()I

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->server_versioncomment:Ljava/lang/String;

    const-string v5, "OpenSSH_2\\.([0-4]\\.|5\\.[0-2]).*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 434
    :cond_7
    new-instance v15, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequestOld;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-direct {v15, v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequestOld;-><init>(Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V

    .line 435
    .local v15, "dhgexreq":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequestOld;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v15}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequestOld;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V

    .line 443
    .end local v15    # "dhgexreq":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequestOld;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    goto/16 :goto_0

    .line 440
    :cond_8
    new-instance v15, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-direct {v15, v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;-><init>(Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V

    .line 441
    .local v15, "dhgexreq":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v15}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V

    goto :goto_1

    .line 447
    .end local v15    # "dhgexreq":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexRequest;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group1-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group14-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 450
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    new-instance v5, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    invoke-direct {v5}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;-><init>()V

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group1-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    .line 457
    :goto_2
    new-instance v21, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHInit;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->getE()Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHInit;-><init>(Ljava/math/BigInteger;)V

    .line 458
    .local v21, "kp":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    invoke-virtual/range {v21 .. v21}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHInit;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    goto/16 :goto_0

    .line 455
    .end local v21    # "kp":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHInit;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->init(ILjava/security/SecureRandom;)V

    goto :goto_2

    .line 463
    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unkown KEX method!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 466
    .end local v20    # "kip":Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;
    :cond_d
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    const/16 v5, 0x15

    if-ne v4, v5, :cond_f

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    move-object v4, v0

    if-nez v4, :cond_e

    .line 469
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Peer sent SSH_MSG_NEWKEYS, but I have no key material ready!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 477
    :cond_e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->enc_key_server_to_client:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    move-object v7, v0

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->initial_iv_server_to_client:[B

    invoke-static {v4, v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->createCipher(Ljava/lang/String;Z[B[B)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    move-result-object v11

    .line 480
    .local v11, "cbc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    new-instance v22, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->km:Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/crypto/KeyMaterial;->integrity_key_server_to_client:[B

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;-><init>(Ljava/lang/String;[B)V

    .line 482
    .local v22, "mac":Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->comp_algo_server_to_client:Ljava/lang/String;

    invoke-static {v4}, Lcom/odinnet/servermonitor/ssh/compression/CompressionFactory;->createCompressor(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v12

    .line 489
    .local v12, "comp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->changeRecvCipher(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v4, v12}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->changeRecvCompression(Lcom/odinnet/servermonitor/ssh/compression/ICompressor;)V

    .line 492
    new-instance v24, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    invoke-direct/range {v24 .. v24}, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;-><init>()V

    .line 494
    .local v24, "sci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kexCount:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kexCount:I

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->keyExchangeAlgorithm:Ljava/lang/String;

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kexCount:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v24

    iput v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->keyExchangeCounter:I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_client_to_server:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->clientToServerCryptoAlgorithm:Ljava/lang/String;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->enc_algo_server_to_client:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->serverToClientCryptoAlgorithm:Ljava/lang/String;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_client_to_server:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->clientToServerMACAlgorithm:Ljava/lang/String;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->mac_algo_server_to_client:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->serverToClientMACAlgorithm:Ljava/lang/String;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->serverHostKeyAlgorithm:Ljava/lang/String;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    move-object v0, v4

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->serverHostKey:[B

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v4, v0

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 507
    :try_start_7
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->lastConnInfo:Lcom/odinnet/servermonitor/ssh/ConnectionInfo;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->accessLock:Ljava/lang/Object;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 509
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 511
    const/4 v4, 0x0

    :try_start_8
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    goto/16 :goto_0

    .line 484
    .end local v11    # "cbc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .end local v12    # "comp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    .end local v22    # "mac":Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;
    .end local v24    # "sci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 486
    .local v19, "e1":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Fatal error during MAC startup!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 509
    .end local v19    # "e1":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "cbc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .restart local v12    # "comp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    .restart local v22    # "mac":Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;
    .restart local v24    # "sci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    :catchall_2
    move-exception v5

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v5

    .line 515
    .end local v11    # "cbc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .end local v12    # "comp":Lcom/odinnet/servermonitor/ssh/compression/ICompressor;
    .end local v22    # "mac":Lcom/odinnet/servermonitor/ssh/crypto/digest/MAC;
    .end local v24    # "sci":Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    if-nez v4, :cond_11

    .line 516
    :cond_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected Kex submessage!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group-exchange-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    .line 522
    new-instance v13, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;-><init>([BII)V

    .line 523
    .local v13, "dhgexgrp":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    new-instance v5, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    invoke-virtual {v13}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v13}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;->getG()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->init(Ljava/security/SecureRandom;)V

    .line 525
    new-instance v14, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexInit;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->getE()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexInit;-><init>(Ljava/math/BigInteger;)V

    .line 526
    .local v14, "dhgexinit":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexInit;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    move-object v4, v0

    invoke-virtual {v14}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexInit;->getPayload()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    goto/16 :goto_0

    .line 531
    .end local v13    # "dhgexgrp":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexGroup;
    .end local v14    # "dhgexinit":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexInit;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_15

    .line 533
    new-instance v16, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;-><init>([BII)V

    .line 535
    .local v16, "dhgexrpl":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v5

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifier:Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;

    move-object v4, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v4, :cond_13

    .line 539
    const/16 v25, 0x0

    .line 543
    .local v25, "vres":Z
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifier:Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->hostname:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->port:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-result v25

    .line 551
    if-nez v25, :cond_13

    .line 552
    :try_start_c
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 545
    :catch_1
    move-exception v4

    move-object/from16 v18, v4

    .line 547
    .local v18, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server hostkey was not accepted by the verifier callback."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "msg":[B
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 555
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v25    # "vres":Z
    .restart local p1    # "msg":[B
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;->getF()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 559
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->getClientString()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->getServerString()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/transport/KexState;->localKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/odinnet/servermonitor/ssh/transport/KexState;->remoteKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getPayload()[B

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;->getHostKey()[B

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v10, v0

    iget-object v10, v10, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    invoke-virtual/range {v4 .. v10}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->calculateH([B[B[B[B[BLcom/odinnet/servermonitor/ssh/DHGexParameters;)[B

    move-result-object v4

    iput-object v4, v11, Lcom/odinnet/servermonitor/ssh/transport/KexState;->H:[B
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 568
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;->getSignature()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifySignature([B[B)Z

    move-result v23

    .line 570
    .local v23, "res":Z
    if-nez v23, :cond_14

    .line 571
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Hostkey signature sent by remote is wrong!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 563
    .end local v23    # "res":Z
    :catch_2
    move-exception v4

    move-object/from16 v18, v4

    .line 565
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "KEX error."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "msg":[B
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 573
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v23    # "res":Z
    .restart local p1    # "msg":[B
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;->getK()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->K:Ljava/math/BigInteger;

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->finishKex()V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    goto/16 :goto_0

    .line 580
    .end local v16    # "dhgexrpl":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDhGexReply;
    .end local v23    # "res":Z
    :cond_15
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Illegal State in KEX Exchange!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 583
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group1-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    const-string v5, "diffie-hellman-group14-sha1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 586
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 589
    new-instance v17, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;-><init>([BII)V

    .line 591
    .local v17, "dhr":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    invoke-virtual/range {v17 .. v17}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v5

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifier:Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;

    move-object v4, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v4, :cond_18

    .line 595
    const/16 v25, 0x0

    .line 599
    .restart local v25    # "vres":Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifier:Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->hostname:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->port:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->server_host_key_algo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/odinnet/servermonitor/ssh/ServerHostKeyVerifier;->verifyServerHostKey(Ljava/lang/String;ILjava/lang/String;[B)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result v25

    .line 607
    if-nez v25, :cond_18

    .line 608
    :try_start_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server hostkey was not accepted by the verifier callback"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 601
    :catch_3
    move-exception v4

    move-object/from16 v18, v4

    .line 603
    .local v18, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "The server hostkey was not accepted by the verifier callback."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "msg":[B
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 611
    .end local v18    # "e":Ljava/lang/Exception;
    .end local v25    # "vres":Z
    .restart local p1    # "msg":[B
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    invoke-virtual/range {v17 .. v17}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->getF()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->setF(Ljava/math/BigInteger;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 615
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    iget-object v4, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->getClientString()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->csh:Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/odinnet/servermonitor/ssh/transport/ClientServerHello;->getServerString()[B

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v7, v0

    iget-object v7, v7, Lcom/odinnet/servermonitor/ssh/transport/KexState;->localKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v7}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getPayload()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v8, v0

    iget-object v8, v8, Lcom/odinnet/servermonitor/ssh/transport/KexState;->remoteKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    invoke-virtual {v8}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getPayload()[B

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->getHostKey()[B

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->calculateH([B[B[B[B[B)[B

    move-result-object v4

    iput-object v4, v10, Lcom/odinnet/servermonitor/ssh/transport/KexState;->H:[B
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 623
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;->getSignature()[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->hostkey:[B

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->verifySignature([B[B)Z

    move-result v23

    .line 625
    .restart local v23    # "res":Z
    if-nez v23, :cond_19

    .line 626
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Hostkey signature sent by remote is wrong!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 618
    .end local v23    # "res":Z
    :catch_4
    move-exception v4

    move-object/from16 v18, v4

    .line 620
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "KEX error."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .end local p1    # "msg":[B
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 628
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v23    # "res":Z
    .restart local p1    # "msg":[B
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v5, v0

    iget-object v5, v5, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

    invoke-virtual {v5}, Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;->getK()Ljava/math/BigInteger;

    move-result-object v5

    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->K:Ljava/math/BigInteger;

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->finishKex()V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    goto/16 :goto_0

    .line 636
    .end local v17    # "dhr":Lcom/odinnet/servermonitor/ssh/packets/PacketKexDHReply;
    .end local v23    # "res":Z
    :cond_1a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unkown KEX method! ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    move-object v6, v0

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/transport/KexState;->np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

    iget-object v6, v6, Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;->kex_algo:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
.end method

.method public declared-synchronized initiateKEX(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Lcom/odinnet/servermonitor/ssh/DHGexParameters;)V
    .locals 3
    .param p1, "cwl"    # Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;
    .param p2, "dhgex"    # Lcom/odinnet/servermonitor/ssh/DHGexParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXcryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    .line 239
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXdhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .line 241
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/odinnet/servermonitor/ssh/transport/KexState;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/transport/KexState;-><init>()V

    iput-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    .line 245
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXdhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    iput-object v2, v1, Lcom/odinnet/servermonitor/ssh/transport/KexState;->dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

    .line 246
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->nextKEXcryptoWishList:Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->rnd:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/CryptoWishList;Ljava/security/SecureRandom;)V

    .line 247
    .local v0, "kp":Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->kxs:Lcom/odinnet/servermonitor/ssh/transport/KexState;

    iput-object v0, v1, Lcom/odinnet/servermonitor/ssh/transport/KexState;->localKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

    .line 248
    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/transport/KexManager;->tm:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;->getPayload()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/transport/TransportManager;->sendKexMessage([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v0    # "kp":Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;
    :cond_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
