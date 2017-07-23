.class public Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;
.super Ljava/lang/Object;
.source "PEMDecoder.java"


# static fields
.field public static final PEM_DSA_PRIVATE_KEY:I = 0x2

.field public static final PEM_RSA_PRIVATE_KEY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([CLjava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "pem"    # [C
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-static {p0}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->parsePEM([C)Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;

    move-result-object v0

    .line 315
    .local v0, "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->isPEMEncrypted(Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;)Z

    move-result p0

    .end local p0    # "pem":[C
    if-eqz p0, :cond_1

    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM is encrypted, but no password was specified"

    .end local p1    # "password":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 320
    .restart local p1    # "password":Ljava/lang/String;
    :cond_0
    const-string p0, "ISO-8859-1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->decryptPEM(Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;[B)V

    .line 323
    :cond_1
    iget p0, v0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->pemType:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_5

    .line 325
    .end local p1    # "password":Ljava/lang/String;
    new-instance p0, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;

    iget-object p1, v0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    invoke-direct {p0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;-><init>([B)V

    .line 327
    .local p0, "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p1

    .line 329
    .local p1, "seq":[B
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result v0

    .end local v0    # "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    if-eqz v0, :cond_2

    .line 330
    new-instance p0, Ljava/io/IOException;

    .end local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    const-string p1, "Padding in DSA PRIVATE KEY DER stream."

    .end local p1    # "seq":[B
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    .restart local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    .restart local p1    # "seq":[B
    :cond_2
    invoke-virtual {p0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->resetInput([B)V

    .line 334
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v6

    .line 336
    .local v6, "version":Ljava/math/BigInteger;
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 337
    new-instance p0, Ljava/io/IOException;

    .end local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "seq":[B
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong version ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") in DSA PRIVATE KEY DER stream."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    .restart local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    .restart local p1    # "seq":[B
    :cond_3
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v1

    .line 340
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v2

    .line 341
    .local v2, "q":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v3

    .line 342
    .local v3, "g":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v4

    .line 343
    .local v4, "y":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v5

    .line 345
    .local v5, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    new-instance p0, Ljava/io/IOException;

    .end local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    const-string p1, "Padding in DSA PRIVATE KEY DER stream."

    .end local p1    # "seq":[B
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 348
    .restart local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    .restart local p1    # "seq":[B
    :cond_4
    new-instance v0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;

    invoke-direct/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v1, v0

    move-object v0, v6

    .line 371
    .end local v1    # "p":Ljava/math/BigInteger;
    .end local v2    # "q":Ljava/math/BigInteger;
    .end local v3    # "g":Ljava/math/BigInteger;
    .end local v4    # "y":Ljava/math/BigInteger;
    .end local v5    # "x":Ljava/math/BigInteger;
    .end local v6    # "version":Ljava/math/BigInteger;
    .local v0, "version":Ljava/math/BigInteger;
    :goto_0
    return-object v1

    .line 351
    .end local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    .end local p1    # "seq":[B
    .local v0, "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    :cond_5
    iget p0, v0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->pemType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_8

    .line 353
    new-instance p1, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;

    iget-object p0, v0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    invoke-direct {p1, p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;-><init>([B)V

    .line 355
    .local p1, "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object v2

    .line 357
    .local v2, "seq":[B
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result p0

    if-eqz p0, :cond_6

    .line 358
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Padding in RSA PRIVATE KEY DER stream."

    .end local p1    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 360
    .restart local p1    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    :cond_6
    invoke-virtual {p1, v2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->resetInput([B)V

    .line 362
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v3

    .line 364
    .local v3, "version":Ljava/math/BigInteger;
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-eqz p0, :cond_7

    .line 365
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong version ("

    .end local v0    # "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") in RSA PRIVATE KEY DER stream."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 367
    .restart local v0    # "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    .restart local p1    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    :cond_7
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v1

    .line 368
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object v0

    .line 369
    .local v0, "e":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readInt()Ljava/math/BigInteger;

    move-result-object p0

    .line 371
    .local p0, "d":Ljava/math/BigInteger;
    new-instance v4, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;

    invoke-direct {v4, p0, v0, v1}, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v3

    .end local v3    # "version":Ljava/math/BigInteger;
    .local v0, "version":Ljava/math/BigInteger;
    move-object p0, p1

    .end local p1    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    .local p0, "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    move-object v1, v4

    move-object p1, v2

    .end local v2    # "seq":[B
    .local p1, "seq":[B
    goto :goto_0

    .line 374
    .end local v1    # "n":Ljava/math/BigInteger;
    .end local p0    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    .end local p1    # "seq":[B
    .local v0, "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PEM problem: it is of unknown type"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final decryptPEM(Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;[B)V
    .locals 13
    .param p0, "ps"    # Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    .param p1, "pw"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x18

    const/4 v10, 0x0

    .line 226
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    if-nez v8, :cond_0

    .line 227
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Broken PEM, no mode and salt given, but encryption enabled"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 229
    :cond_0
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    .line 230
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Broken PEM, DEK-Info is incomplete!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 232
    :cond_1
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    aget-object v1, v8, v10

    .line 233
    .local v1, "algo":Ljava/lang/String;
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 235
    .local v7, "salt":[B
    const/4 v2, 0x0

    .line 237
    .local v2, "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    const-string v8, "DES-EDE3-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    new-instance v4, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DESede;

    invoke-direct {v4}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DESede;-><init>()V

    .line 240
    .local v4, "des3":Lcom/odinnet/servermonitor/ssh/crypto/cipher/DESede;
    invoke-static {p1, v7, v11}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v4, v10, v8}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DESede;->init(Z[B)V

    .line 241
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;

    .end local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    invoke-direct {v2, v4, v7, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V

    .line 272
    .end local v4    # "des3":Lcom/odinnet/servermonitor/ssh/crypto/cipher/DESede;
    .restart local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    :goto_0
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    array-length v8, v8

    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v9

    rem-int/2addr v8, v9

    if-eqz v8, :cond_7

    .line 273
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid PEM structure, size of encrypted block is not a multiple of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 243
    :cond_2
    const-string v8, "DES-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 245
    new-instance v3, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;-><init>()V

    .line 246
    .local v3, "des":Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;
    const/16 v8, 0x8

    invoke-static {p1, v7, v8}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v3, v10, v8}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;->init(Z[B)V

    .line 247
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;

    .end local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    invoke-direct {v2, v3, v7, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V

    .line 248
    .restart local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    goto :goto_0

    .line 249
    .end local v3    # "des":Lcom/odinnet/servermonitor/ssh/crypto/cipher/DES;
    :cond_3
    const-string v8, "AES-128-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 251
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;-><init>()V

    .line 252
    .local v0, "aes":Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;
    const/16 v8, 0x10

    invoke-static {p1, v7, v8}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;->init(Z[B)V

    .line 253
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;

    .end local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    invoke-direct {v2, v0, v7, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V

    .line 254
    .restart local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    goto :goto_0

    .line 255
    .end local v0    # "aes":Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;
    :cond_4
    const-string v8, "AES-192-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 257
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;-><init>()V

    .line 258
    .restart local v0    # "aes":Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;
    invoke-static {p1, v7, v11}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;->init(Z[B)V

    .line 259
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;

    .end local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    invoke-direct {v2, v0, v7, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V

    .line 260
    .restart local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    goto :goto_0

    .line 261
    .end local v0    # "aes":Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;
    :cond_5
    const-string v8, "AES-256-CBC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 263
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;-><init>()V

    .line 264
    .restart local v0    # "aes":Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;
    const/16 v8, 0x20

    invoke-static {p1, v7, v8}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->generateKeyFromPasswordSaltWithMD5([B[BI)[B

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;->init(Z[B)V

    .line 265
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;

    .end local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    invoke-direct {v2, v0, v7, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V

    .line 266
    .restart local v2    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    goto/16 :goto_0

    .line 269
    .end local v0    # "aes":Lcom/odinnet/servermonitor/ssh/crypto/cipher/AES;
    :cond_6
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot decrypt PEM structure, unknown cipher "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 278
    :cond_7
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    array-length v8, v8

    new-array v5, v8, [B

    .line 280
    .local v5, "dz":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    array-length v8, v8

    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v9

    div-int/2addr v8, v9

    if-ge v6, v8, :cond_8

    .line 282
    iget-object v8, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v9

    mul-int/2addr v9, v6

    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v10

    mul-int/2addr v10, v6

    invoke-interface {v2, v8, v9, v5, v10}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->transformBlock([BI[BI)V

    .line 280
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 287
    :cond_8
    invoke-interface {v2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->getBlockSize()I

    move-result v8

    invoke-static {v5, v8}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->removePadding([BI)[B

    move-result-object v5

    .line 289
    iput-object v5, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    .line 290
    iput-object v12, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    .line 291
    iput-object v12, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    .line 292
    return-void
.end method

.method private static generateKeyFromPasswordSaltWithMD5([B[BI)[B
    .locals 7
    .param p0, "password"    # [B
    .param p1, "salt"    # [B
    .param p2, "keyLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 73
    array-length v4, p1

    if-ge v4, v6, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Salt needs to be at least 8 bytes for key generation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    new-instance v2, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;

    invoke-direct {v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;-><init>()V

    .line 78
    .local v2, "md5":Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;
    new-array v1, p2, [B

    .line 79
    .local v1, "key":[B
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;->getDigestLength()I

    move-result v4

    new-array v3, v4, [B

    .line 83
    .local v3, "tmp":[B
    :goto_0
    array-length v4, p0

    invoke-virtual {v2, p0, v5, v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;->update([BII)V

    .line 84
    invoke-virtual {v2, p1, v5, v6}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;->update([BII)V

    .line 88
    array-length v4, v3

    if-ge p2, v4, :cond_1

    move v0, p2

    .line 90
    .local v0, "copy":I
    :goto_1
    invoke-virtual {v2, v3, v5}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;->digest([BI)V

    .line 92
    array-length v4, v1

    sub-int/2addr v4, p2

    invoke-static {v3, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    sub-int/2addr p2, v0

    .line 96
    if-nez p2, :cond_2

    .line 97
    return-object v1

    .line 88
    .end local v0    # "copy":I
    :cond_1
    array-length v4, v3

    move v0, v4

    goto :goto_1

    .line 99
    .restart local v0    # "copy":I
    :cond_2
    array-length v4, v3

    invoke-virtual {v2, v3, v5, v4}, Lcom/odinnet/servermonitor/ssh/crypto/digest/MD5;->update([BII)V

    goto :goto_0
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "null argument"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Uneven string length in hex encoding."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 59
    .local v0, "decoded":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 61
    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->hexToInt(C)I

    move-result v1

    .line 62
    .local v1, "hi":I
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/odinnet/servermonitor/ssh/crypto/PEMDecoder;->hexToInt(C)I

    move-result v3

    .line 64
    .local v3, "lo":I
    mul-int/lit8 v4, v1, 0x10

    add-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "hi":I
    .end local v3    # "lo":I
    :cond_2
    return-object v0
.end method

.method private static final hexToInt(C)I
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 31
    if-lt p0, v3, :cond_0

    const/16 v0, 0x66

    if-gt p0, v0, :cond_0

    .line 33
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    .line 43
    :goto_0
    return v0

    .line 36
    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 38
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 41
    :cond_1
    if-lt p0, v1, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 43
    sub-int v0, p0, v1

    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need hex char"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final isPEMEncrypted(Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;)Z
    .locals 4
    .param p0, "ps"    # Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 296
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v3

    .line 308
    :goto_0
    return v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 300
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown Proc-Type field."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_1
    const-string v0, "4"

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Proc-Type field ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_2
    const-string v0, "ENCRYPTED"

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 306
    goto :goto_0

    :cond_3
    move v0, v3

    .line 308
    goto :goto_0
.end method

.method public static final parsePEM([C)Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    .locals 7
    .param p0, "pem"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    new-instance v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;

    invoke-direct {v4}, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;-><init>()V

    .line 127
    .local v4, "ps":Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;
    const/4 v1, 0x0

    .line 129
    .local v1, "line":Ljava/lang/String;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/CharArrayReader;

    invoke-direct {v2, p0}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 131
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 p0, 0x0

    .local p0, "endLine":Ljava/lang/String;
    move-object p0, v1

    .line 135
    .end local v1    # "line":Ljava/lang/String;
    .local p0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance p0, Ljava/io/IOException;

    .end local p0    # "line":Ljava/lang/String;
    const-string v0, "Invalid PEM structure, \'-----BEGIN...\' missing"

    .end local v0    # "br":Ljava/io/BufferedReader;
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 140
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 142
    .end local p0    # "line":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    const-string p0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 144
    const-string p0, "-----END DSA PRIVATE KEY-----"

    .line 145
    .local p0, "endLine":Ljava/lang/String;
    const/4 v2, 0x2

    iput v2, v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->pemType:I

    .line 159
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 161
    if-nez v1, :cond_2

    .line 162
    new-instance v0, Ljava/io/IOException;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "line":Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PEM structure, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "endLine":Ljava/lang/String;
    const-string v1, " missing"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "line":Ljava/lang/String;
    :cond_1
    const-string p0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 151
    const-string p0, "-----END RSA PRIVATE KEY-----"

    .line 152
    .restart local p0    # "endLine":Ljava/lang/String;
    const/4 v2, 0x1

    iput v2, v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->pemType:I

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 166
    .end local v1    # "line":Ljava/lang/String;
    .local v2, "line":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 168
    .local v1, "sem_idx":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 196
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "sem_idx":I
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v1, "keyData":Ljava/lang/StringBuffer;
    :goto_2
    if-nez v2, :cond_7

    .line 201
    new-instance v0, Ljava/io/IOException;

    .end local v0    # "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "keyData":Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PEM structure, "

    .end local v2    # "line":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "endLine":Ljava/lang/String;
    const-string v1, " missing"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "sem_idx":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local p0    # "endLine":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v1    # "sem_idx":I
    move-result-object v1

    .line 174
    .local v1, "value":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "values":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v6, v5

    if-ge v1, v6, :cond_4

    .line 177
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 182
    :cond_4
    const-string v1, "Proc-Type:"

    .end local v1    # "i":I
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->procType:[Ljava/lang/String;

    move-object v1, v2

    .line 185
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "line":Ljava/lang/String;
    goto/16 :goto_1

    .line 188
    .end local v1    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_5
    const-string v1, "DEK-Info:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 190
    iput-object v5, v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->dekInfo:[Ljava/lang/String;

    move-object v1, v2

    .line 191
    .end local v2    # "line":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    goto/16 :goto_1

    .end local v1    # "line":Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_6
    move-object v1, v2

    .line 194
    .end local v2    # "line":Ljava/lang/String;
    .restart local v1    # "line":Ljava/lang/String;
    goto/16 :goto_1

    .line 203
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "values":[Ljava/lang/String;
    .local v1, "keyData":Ljava/lang/StringBuffer;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    .end local p0    # "endLine":Ljava/lang/String;
    new-array p0, p0, [C

    .line 214
    .local p0, "pem_chars":[C
    const/4 v0, 0x0

    array-length v2, p0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p0, v3}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 216
    invoke-static {p0}, Lcom/odinnet/servermonitor/ssh/crypto/Base64;->decode([C)[B

    move-result-object p0

    .end local p0    # "pem_chars":[C
    iput-object p0, v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    .line 218
    iget-object p0, v4, Lcom/odinnet/servermonitor/ssh/crypto/PEMStructure;->data:[B

    array-length p0, p0

    if-nez p0, :cond_9

    .line 219
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PEM structure, no data available"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .local p0, "endLine":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 221
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local p0    # "endLine":Ljava/lang/String;
    :cond_9
    return-object v4

    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "line":Ljava/lang/String;
    :cond_a
    move-object p0, v1

    .end local v1    # "line":Ljava/lang/String;
    .local p0, "line":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private static removePadding([BI)[B
    .locals 7
    .param p0, "buff"    # [B
    .param p1, "blockSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Decrypted PEM has wrong padding, did you specify the correct password?"

    .line 107
    array-length v3, p0

    sub-int/2addr v3, v5

    aget-byte v3, p0, v3

    and-int/lit16 v1, v3, 0xff

    .line 109
    .local v1, "rfc_1423_padding":I
    if-lt v1, v5, :cond_0

    if-le v1, p1, :cond_1

    .line 110
    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Decrypted PEM has wrong padding, did you specify the correct password?"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_1
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 114
    array-length v3, p0

    sub-int/2addr v3, v0

    aget-byte v3, p0, v3

    if-eq v3, v1, :cond_2

    .line 115
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Decrypted PEM has wrong padding, did you specify the correct password?"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_3
    array-length v3, p0

    sub-int/2addr v3, v1

    new-array v2, v3, [B

    .line 119
    .local v2, "tmp":[B
    array-length v3, p0

    sub-int/2addr v3, v1

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-object v2
.end method
