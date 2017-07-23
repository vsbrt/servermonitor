.class public Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;
.super Ljava/lang/Object;
.source "RSAPrivateKey.java"


# instance fields
.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "e"    # Ljava/math/BigInteger;
    .param p3, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    .line 20
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    .line 21
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    .line 22
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getE()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->e:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/signature/RSAPrivateKey;->n:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lcom/odinnet/servermonitor/ssh/signature/RSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method
