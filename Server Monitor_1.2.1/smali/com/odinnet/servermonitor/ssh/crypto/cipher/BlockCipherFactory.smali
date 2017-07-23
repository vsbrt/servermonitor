.class public Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;
.super Ljava/lang/Object;
.source "BlockCipherFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    }
.end annotation


# static fields
.field static ciphers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0x18

    const/16 v6, 0x8

    const/16 v4, 0x10

    const-string v5, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    .line 36
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes256-ctr"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    invoke-direct {v1, v2, v4, v8, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes192-ctr"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    invoke-direct {v1, v2, v4, v7, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes128-ctr"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    invoke-direct {v1, v2, v4, v4, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "blowfish-ctr"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.BlowFish"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes256-cbc"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    invoke-direct {v1, v2, v4, v8, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes192-cbc"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    invoke-direct {v1, v2, v4, v7, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "aes128-cbc"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.AES"

    invoke-direct {v1, v2, v4, v4, v5}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "blowfish-cbc"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.BlowFish"

    invoke-direct {v1, v2, v6, v4, v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "3des-ctr"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.DESede"

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    new-instance v1, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    const-string v2, "3des-cbc"

    const-string v3, "com.odinnet.servermonitor.ssh.crypto.cipher.DESede"

    invoke-direct {v1, v2, v6, v7, v3}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static checkCipherList([Ljava/lang/String;)V
    .locals 2
    .param p0, "cipherCandidates"    # [Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 64
    aget-object v1, p0, v0

    invoke-static {v1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public static createCipher(Ljava/lang/String;Z[B[B)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "encrypt"    # Z
    .param p2, "key"    # [B
    .param p3, "iv"    # [B

    .prologue
    const-string v7, "Cannot instantiate "

    .line 71
    :try_start_0
    invoke-static {p0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object v2

    .line 72
    .local v2, "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    iget-object v4, v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 73
    .local v1, "cc":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;

    .line 75
    .local v0, "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    const-string v4, "-cbc"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    invoke-interface {v0, p1, p2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->init(Z[B)V

    .line 78
    new-instance v4, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;

    invoke-direct {v4, v0, p3, p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CBCMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V

    .line 83
    :goto_0
    return-object v4

    .line 80
    :cond_0
    const-string v4, "-ctr"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    const/4 v4, 0x1

    invoke-interface {v0, v4, p2}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;->init(Z[B)V

    .line 83
    new-instance v4, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CTRMode;

    invoke-direct {v4, v0, p3, p1}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/CTRMode;-><init>(Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;[BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v0    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .end local v1    # "cc":Ljava/lang/Class;
    .end local v2    # "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot instantiate "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bc":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;
    .restart local v1    # "cc":Ljava/lang/Class;
    .restart local v2    # "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    :cond_1
    :try_start_1
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
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static getBlockSize(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object v0

    .line 107
    .local v0, "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    iget v1, v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    return v1
.end method

.method public static getDefaultCipherList()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    sget-object v3, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 53
    .local v2, "list":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 55
    sget-object v3, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 56
    .local v0, "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    :cond_0
    return-object v2
.end method

.method private static getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 97
    sget-object v2, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->ciphers:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    .line 98
    .local v0, "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    iget-object v2, v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    return-object v0

    .line 95
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
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

.method public static getKeySize(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;->getEntry(Ljava/lang/String;)Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;

    move-result-object v0

    .line 113
    .local v0, "ce":Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
    iget v1, v0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    return v1
.end method
