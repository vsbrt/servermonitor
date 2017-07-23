.class public Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;
.super Ljava/lang/Object;
.source "NullCipher.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/crypto/cipher/BlockCipher;


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x8

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;->blockSize:I

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "blockSize"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x8

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;->blockSize:I

    .line 19
    iput p1, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;->blockSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;->blockSize:I

    return v0
.end method

.method public init(Z[B)V
    .locals 0
    .param p1, "forEncryption"    # Z
    .param p2, "key"    # [B

    .prologue
    .line 24
    return-void
.end method

.method public transformBlock([BI[BI)V
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcoff"    # I
    .param p3, "dst"    # [B
    .param p4, "dstoff"    # I

    .prologue
    .line 33
    iget v0, p0, Lcom/odinnet/servermonitor/ssh/crypto/cipher/NullCipher;->blockSize:I

    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-void
.end method
