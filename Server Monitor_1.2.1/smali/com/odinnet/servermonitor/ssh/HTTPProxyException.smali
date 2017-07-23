.class public Lcom/odinnet/servermonitor/ssh/HTTPProxyException;
.super Ljava/io/IOException;
.source "HTTPProxyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1f1b8a62f129bccaL


# instance fields
.field public final httpErrorCode:I

.field public final httpResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "httpResponse"    # Ljava/lang/String;
    .param p2, "httpErrorCode"    # I

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP Proxy Error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyException;->httpResponse:Ljava/lang/String;

    .line 27
    iput p2, p0, Lcom/odinnet/servermonitor/ssh/HTTPProxyException;->httpErrorCode:I

    .line 28
    return-void
.end method
