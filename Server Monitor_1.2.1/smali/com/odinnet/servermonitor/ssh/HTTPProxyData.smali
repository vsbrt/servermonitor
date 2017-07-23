.class public Lcom/odinnet/servermonitor/ssh/HTTPProxyData;
.super Ljava/lang/Object;
.source "HTTPProxyData.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/ProxyData;


# instance fields
.field public final proxyHost:Ljava/lang/String;

.field public final proxyPass:Ljava/lang/String;

.field public final proxyPort:I

.field public final proxyUser:Ljava/lang/String;

.field public final requestHeaderLines:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "proxyUser"    # Ljava/lang/String;
    .param p4, "proxyPass"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "proxyHost"    # Ljava/lang/String;
    .param p2, "proxyPort"    # I
    .param p3, "proxyUser"    # Ljava/lang/String;
    .param p4, "proxyPass"    # Ljava/lang/String;
    .param p5, "requestHeaderLines"    # [Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxyHost must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    if-gez p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "proxyPort must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyHost:Ljava/lang/String;

    .line 78
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyPort:I

    .line 79
    iput-object p3, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyUser:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->proxyPass:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyData;->requestHeaderLines:[Ljava/lang/String;

    .line 82
    return-void
.end method
