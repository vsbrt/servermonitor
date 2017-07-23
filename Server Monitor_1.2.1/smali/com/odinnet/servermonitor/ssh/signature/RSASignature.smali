.class public Lcom/odinnet/servermonitor/ssh/signature/RSASignature;
.super Ljava/lang/Object;
.source "RSASignature.java"


# instance fields
.field s:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "s"    # Ljava/math/BigInteger;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;->s:Ljava/math/BigInteger;

    .line 26
    return-void
.end method


# virtual methods
.method public getS()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/odinnet/servermonitor/ssh/signature/RSASignature;->s:Ljava/math/BigInteger;

    return-object v0
.end method
