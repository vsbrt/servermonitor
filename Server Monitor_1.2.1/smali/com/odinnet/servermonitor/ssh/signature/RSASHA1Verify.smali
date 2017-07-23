.class public Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;
.super Ljava/lang/Object;
.source "RSASHA1Verify.java"


# static fields
.field private static final log:Lcom/odinnet/servermonitor/ssh/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ssh/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/odinnet/servermonitor/ssh/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeSSHRSAPublicKey([B)Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .locals 6
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v3, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v3, p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 28
    .local v3, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "key_format":Ljava/lang/String;
    const-string v4, "ssh-rsa"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 31
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "This is not a ssh-rsa public key"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    :cond_0
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v0

    .line 34
    .local v0, "e":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readMPINT()Ljava/math/BigInteger;

    move-result-object v2

    .line 36
    .local v2, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v4

    if-eqz v4, :cond_1

    .line 37
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Padding in RSA public key!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 39
    :cond_1
    new-instance v4, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    invoke-direct {v4, v0, v2}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v4
.end method

.method public static decodeSSHRSASignature([B)Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    .locals 7
    .param p0, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v2, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;

    invoke-direct {v2, p0}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;-><init>([B)V

    .line 57
    .local v2, "tr":Lcom/odinnet/servermonitor/ssh/packets/TypesReader;
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "sig_format":Ljava/lang/String;
    const-string v3, "ssh-rsa"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Peer sent wrong signature format"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    :cond_0
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->readByteString()[B

    move-result-object v0

    .line 69
    .local v0, "s":[B
    array-length v3, v0

    if-nez v3, :cond_1

    .line 70
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error in RSA signature, S is empty."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_1
    sget-object v3, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/log/Logger;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    sget-object v3, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 v4, 0x50

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Decoding ssh-rsa signature string (length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 77
    :cond_2
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesReader;->remain()I

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Padding in RSA signature!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_3
    new-instance v3, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v3, v4}, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object v3
.end method

.method public static encodeSSHRSAPublicKey(Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;)[B
    .locals 2
    .param p0, "pk"    # Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 46
    .local v0, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const-string v1, "ssh-rsa"

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 48
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeMPInt(Ljava/math/BigInteger;)V

    .line 50
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeSSHRSASignature(Lcom/odinnet/servermonitor/ssh/signature/RSASignature;)[B
    .locals 5
    .param p0, "sig"    # Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    new-instance v1, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;-><init>()V

    .line 87
    .local v1, "tw":Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;
    const-string v2, "ssh-rsa"

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 98
    .local v0, "s":[B
    array-length v2, v0

    if-le v2, v3, :cond_0

    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    .line 99
    array-length v2, v0

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    .line 103
    :goto_0
    invoke-virtual {v1}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->getBytes()[B

    move-result-object v2

    return-object v2

    .line 101
    :cond_0
    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Lcom/odinnet/servermonitor/ssh/packets/TypesWriter;->writeString([BII)V

    goto :goto_0
.end method

.method public static generateSignature([BLcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;)Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    .locals 13
    .param p0, "message"    # [B
    .param p1, "pk"    # Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 108
    new-instance v3, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 109
    .local v3, "md":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    invoke-virtual {v3, p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([B)V

    .line 110
    invoke-virtual {v3}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result v9

    new-array v7, v9, [B

    .line 111
    .local v7, "sha_message":[B
    invoke-virtual {v3, v7}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 113
    const/16 v9, 0xf

    new-array v0, v9, [B

    fill-array-data v0, :array_0

    .line 116
    .local v0, "der_header":[B
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v5, v9, 0x8

    .line 118
    .local v5, "rsa_block_len":I
    array-length v9, v0

    add-int/lit8 v9, v9, 0x2

    array-length v10, v7

    add-int/2addr v9, v10

    sub-int v9, v5, v9

    sub-int v4, v9, v12

    .line 120
    .local v4, "num_pad":I
    const/16 v9, 0x8

    if-ge v4, v9, :cond_0

    .line 121
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Cannot sign with RSA, message too long"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 123
    :cond_0
    array-length v9, v0

    array-length v10, v7

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    new-array v8, v9, [B

    .line 125
    .local v8, "sig":[B
    aput-byte v12, v8, v11

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 129
    add-int/lit8 v9, v1, 0x1

    const/4 v10, -0x1

    aput-byte v10, v8, v9

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    add-int/lit8 v9, v4, 0x1

    aput-byte v11, v8, v9

    .line 134
    add-int/lit8 v9, v4, 0x2

    array-length v10, v0

    invoke-static {v0, v11, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    add-int/lit8 v9, v4, 0x2

    array-length v10, v0

    add-int/2addr v9, v10

    array-length v10, v7

    invoke-static {v7, v11, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v12, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 139
    .local v2, "m":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->getN()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 141
    .local v6, "s":Ljava/math/BigInteger;
    new-instance v9, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;

    invoke-direct {v9, v6}, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;-><init>(Ljava/math/BigInteger;)V

    return-object v9

    .line 113
    nop

    :array_0
    .array-data 1
        0x30t
        0x21t
        0x30t
        0x9t
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
        0x4t
        0x14t
    .end array-data
.end method

.method public static verifySignature([BLcom/odinnet/servermonitor/ssh/signature/RSASignature;Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;)Z
    .locals 4
    .param p0, "message"    # [B
    .param p1, "ds"    # Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    .param p2, "dpk"    # Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;

    invoke-direct {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;-><init>()V

    .line 147
    .local v0, "md":Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;
    invoke-virtual {v0, p0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->update([B)V

    .line 148
    invoke-virtual {v0}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->getDigestLength()I

    move-result p0

    .end local p0    # "message":[B
    new-array v1, p0, [B

    .line 149
    .local v1, "sha_message":[B
    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/ssh/crypto/digest/SHA1;->digest([B)V

    .line 151
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getN()Ljava/math/BigInteger;

    move-result-object v0

    .line 152
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;->getE()Ljava/math/BigInteger;

    move-result-object p0

    .line 153
    .local p0, "e":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;->getS()Ljava/math/BigInteger;

    move-result-object p2

    .line 155
    .local p2, "s":Ljava/math/BigInteger;
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    .end local p1    # "ds":Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
    if-gtz p1, :cond_0

    .line 157
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "e":Ljava/math/BigInteger;
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: n.compareTo(s) <= 0"

    .end local p2    # "s":Ljava/math/BigInteger;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 158
    const/4 p0, 0x0

    .line 283
    .end local v0    # "n":Ljava/math/BigInteger;
    :goto_0
    return p0

    .line 161
    .restart local v0    # "n":Ljava/math/BigInteger;
    .restart local p0    # "e":Ljava/math/BigInteger;
    .restart local p2    # "s":Ljava/math/BigInteger;
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 165
    .local p1, "rsa_block_len":I
    const/4 v2, 0x1

    if-ge p1, v2, :cond_1

    .line 167
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "e":Ljava/math/BigInteger;
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: rsa_block_len < 1"

    .end local p1    # "rsa_block_len":I
    .end local p2    # "s":Ljava/math/BigInteger;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 168
    const/4 p0, 0x0

    goto :goto_0

    .line 171
    .restart local p0    # "e":Ljava/math/BigInteger;
    .restart local p1    # "rsa_block_len":I
    .restart local p2    # "s":Ljava/math/BigInteger;
    :cond_1
    invoke-virtual {p2, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .end local p0    # "e":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 173
    .local v0, "v":[B
    const/4 p0, 0x0

    .line 175
    .local p0, "startpos":I
    array-length p2, v0

    .end local p2    # "s":Ljava/math/BigInteger;
    if-lez p2, :cond_12

    const/4 p2, 0x0

    aget-byte p2, v0, p2

    if-nez p2, :cond_12

    .line 176
    add-int/lit8 p0, p0, 0x1

    move p2, p0

    .line 178
    .end local p0    # "startpos":I
    .local p2, "startpos":I
    :goto_1
    array-length p0, v0

    sub-int/2addr p0, p2

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    if-eq p0, p1, :cond_2

    .line 180
    .end local p1    # "rsa_block_len":I
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: (v.length - startpos) != (rsa_block_len - 1)"

    .end local p2    # "startpos":I
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 181
    const/4 p0, 0x0

    goto :goto_0

    .line 184
    .restart local p2    # "startpos":I
    :cond_2
    aget-byte p0, v0, p2

    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    .line 186
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: v[startpos] != 0x01"

    .end local p2    # "startpos":I
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 187
    const/4 p0, 0x0

    goto :goto_0

    .line 190
    .restart local p2    # "startpos":I
    :cond_3
    add-int/lit8 p0, p2, 0x1

    .local p0, "pos":I
    move p1, p0

    .line 194
    .end local p0    # "pos":I
    .local p1, "pos":I
    :goto_2
    array-length p0, v0

    if-lt p1, p0, :cond_4

    .line 196
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: pos >= v.length"

    .end local p1    # "pos":I
    .end local p2    # "startpos":I
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 197
    const/4 p0, 0x0

    goto :goto_0

    .line 199
    .restart local p1    # "pos":I
    .restart local p2    # "startpos":I
    :cond_4
    aget-byte p0, v0, p1

    if-nez p0, :cond_5

    .line 209
    add-int/lit8 p0, p2, 0x1

    sub-int p0, p1, p0

    .line 211
    .local p0, "num_pad":I
    const/16 p2, 0x8

    if-ge p0, p2, :cond_7

    .line 213
    .end local p2    # "startpos":I
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "num_pad":I
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: num_pad < 8"

    .end local p1    # "pos":I
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 214
    const/4 p0, 0x0

    goto :goto_0

    .line 201
    .restart local p1    # "pos":I
    .restart local p2    # "startpos":I
    :cond_5
    aget-byte p0, v0, p1

    const/4 v2, -0x1

    if-eq p0, v2, :cond_6

    .line 203
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: v[pos] != (byte) 0xff"

    .end local p1    # "pos":I
    .end local p2    # "startpos":I
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 204
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 206
    .restart local p1    # "pos":I
    .restart local p2    # "startpos":I
    :cond_6
    add-int/lit8 p0, p1, 0x1

    .end local p1    # "pos":I
    .local p0, "pos":I
    move p1, p0

    .end local p0    # "pos":I
    .restart local p1    # "pos":I
    goto :goto_2

    .line 217
    .end local p2    # "startpos":I
    .local p0, "num_pad":I
    :cond_7
    add-int/lit8 p0, p1, 0x1

    .line 219
    .end local p1    # "pos":I
    .local p0, "pos":I
    array-length p1, v0

    if-lt p0, p1, :cond_8

    .line 221
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "pos":I
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: pos >= v.length"

    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 222
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 225
    .restart local p0    # "pos":I
    :cond_8
    new-instance p2, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;

    array-length p1, v0

    sub-int/2addr p1, p0

    invoke-direct {p2, v0, p0, p1}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;-><init>([BII)V

    .line 227
    .local p2, "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 229
    .local p0, "seq":[B
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result p1

    if-eqz p1, :cond_9

    .line 231
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "seq":[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: dr.available() != 0"

    .end local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 232
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 235
    .restart local p0    # "seq":[B
    .restart local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    :cond_9
    invoke-virtual {p2, p0}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->resetInput([B)V

    .line 239
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readSequenceAsByteArray()[B

    move-result-object p0

    .line 243
    .local p0, "digestAlgorithm":[B
    array-length p1, p0

    const/16 v0, 0x8

    if-lt p1, v0, :cond_a

    .end local v0    # "v":[B
    array-length p1, p0

    const/16 v0, 0x9

    if-le p1, v0, :cond_b

    .line 245
    :cond_a
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "digestAlgorithm":[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: (digestAlgorithm.length < 8) || (digestAlgorithm.length > 9)"

    .end local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 246
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 249
    .restart local p0    # "digestAlgorithm":[B
    .restart local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    :cond_b
    const/16 p1, 0x9

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    .line 251
    .local p1, "digestAlgorithm_sha1":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v2, p0

    if-ge v0, v2, :cond_d

    .line 253
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_c

    .line 255
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "digestAlgorithm":[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: digestAlgorithm[i] != digestAlgorithm_sha1[i]"

    .end local p1    # "digestAlgorithm_sha1":[B
    .end local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 256
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 251
    .restart local p0    # "digestAlgorithm":[B
    .restart local p1    # "digestAlgorithm_sha1":[B
    .restart local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 260
    :cond_d
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->readOctetString()[B

    move-result-object p0

    .line 262
    .local p0, "digest":[B
    invoke-virtual {p2}, Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;->available()I

    move-result p1

    .end local p1    # "digestAlgorithm_sha1":[B
    if-eqz p1, :cond_e

    .line 264
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "digest":[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: dr.available() != 0 (II)"

    .end local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 265
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 268
    .restart local p0    # "digest":[B
    .restart local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    :cond_e
    array-length p1, p0

    array-length p2, v1

    .end local p2    # "dr":Lcom/odinnet/servermonitor/ssh/crypto/SimpleDERReader;
    if-eq p1, p2, :cond_f

    .line 270
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "digest":[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: digest.length != sha_message.length"

    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 271
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 274
    .restart local p0    # "digest":[B
    :cond_f
    const/4 p1, 0x0

    .end local v0    # "i":I
    .local p1, "i":I
    :goto_4
    array-length p2, v1

    if-ge p1, p2, :cond_11

    .line 276
    aget-byte p2, v1, p1

    aget-byte v0, p0, p1

    if-eq p2, v0, :cond_10

    .line 278
    sget-object p0, Lcom/odinnet/servermonitor/ssh/signature/RSASHA1Verify;->log:Lcom/odinnet/servermonitor/ssh/log/Logger;

    .end local p0    # "digest":[B
    const/16 p1, 0x14

    const-string p2, "ssh-rsa signature: sha_message[i] != digest[i]"

    .end local p1    # "i":I
    invoke-virtual {p0, p1, p2}, Lcom/odinnet/servermonitor/ssh/log/Logger;->log(ILjava/lang/String;)V

    .line 279
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 274
    .restart local p0    # "digest":[B
    .restart local p1    # "i":I
    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 283
    :cond_11
    const/4 p0, 0x1

    goto/16 :goto_0

    .local v0, "v":[B
    .local p0, "startpos":I
    .local p1, "rsa_block_len":I
    :cond_12
    move p2, p0

    .end local p0    # "startpos":I
    .local p2, "startpos":I
    goto/16 :goto_1

    .line 249
    :array_0
    .array-data 1
        0x6t
        0x5t
        0x2bt
        0xet
        0x3t
        0x2t
        0x1at
        0x5t
        0x0t
    .end array-data
.end method
