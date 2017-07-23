.class Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;
.super Ljava/lang/Object;
.source "BlockCipherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CipherEntry"
.end annotation


# instance fields
.field blocksize:I

.field cipherClass:Ljava/lang/String;

.field keysize:I

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "blockSize"    # I
    .param p3, "keySize"    # I
    .param p4, "cipherClass"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->type:Ljava/lang/String;

    .line 24
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->blocksize:I

    .line 25
    iput p3, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->keysize:I

    .line 26
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipherFactory$CipherEntry;->cipherClass:Ljava/lang/String;

    .line 27
    return-void
.end method
