.class public Lcom/odinnet/servermonitor/ssh/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"


# instance fields
.field public clientToServerCryptoAlgorithm:Ljava/lang/String;

.field public clientToServerMACAlgorithm:Ljava/lang/String;

.field public keyExchangeAlgorithm:Ljava/lang/String;

.field public keyExchangeCounter:I

.field public serverHostKey:[B

.field public serverHostKeyAlgorithm:Ljava/lang/String;

.field public serverToClientCryptoAlgorithm:Ljava/lang/String;

.field public serverToClientMACAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/ConnectionInfo;->keyExchangeCounter:I

    return-void
.end method
