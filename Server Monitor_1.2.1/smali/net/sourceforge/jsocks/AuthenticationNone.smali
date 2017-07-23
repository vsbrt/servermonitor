.class public Lnet/sourceforge/jsocks/AuthenticationNone;
.super Ljava/lang/Object;
.source "AuthenticationNone.java"

# interfaces
.implements Lnet/sourceforge/jsocks/Authentication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doSocksAuthentication(ILjava/net/Socket;)[Ljava/lang/Object;
    .locals 3
    .param p1, "methodId"    # I
    .param p2, "proxySocket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 14
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method
