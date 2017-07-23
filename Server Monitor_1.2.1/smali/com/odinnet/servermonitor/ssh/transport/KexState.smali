.class public Lcom/odinnet/servermonitor/ssh/transport/KexState;
.super Ljava/lang/Object;
.source "KexState.java"


# instance fields
.field public H:[B

.field public K:Ljava/math/BigInteger;

.field public dhgexParameters:Lcom/odinnet/servermonitor/ssh/DHGexParameters;

.field public dhgx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhGroupExchange;

.field public dhx:Lcom/odinnet/servermonitor/ssh/crypto/dh/DhExchange;

.field public hostkey:[B

.field public localKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

.field public np:Lcom/odinnet/servermonitor/ssh/transport/NegotiatedParameters;

.field public remoteKEX:Lcom/odinnet/servermonitor/ssh/packets/PacketKexInit;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/odinnet/servermonitor/ssh/transport/KexState;->state:I

    return-void
.end method
