.class public Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;
.super Ljava/lang/Object;
.source "DSAPrivateKey.java"


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private x:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "y"    # Ljava/math/BigInteger;
    .param p5, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    .line 23
    iput-object p2, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    .line 24
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    .line 25
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    .line 26
    iput-object p5, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->x:Ljava/math/BigInteger;

    .line 27
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKey()Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;

    iget-object v1, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->g:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/odinnet/servermonitor/ssh/signature/DSAPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/DSAPrivateKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method
