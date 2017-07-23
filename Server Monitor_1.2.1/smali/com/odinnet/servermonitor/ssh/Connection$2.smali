.class Lcom/odinnet/servermonitor/ssh/Connection$2;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/odinnet/servermonitor/ssh/DebugLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/ssh/Connection;->enableDebugging(ZLcom/odinnet/servermonitor/ssh/DebugLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/Connection;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/Connection;)V
    .locals 0

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/Connection$2;->this$0:Lcom/odinnet/servermonitor/ssh/Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "level"    # I
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 1587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1588
    .local v0, "now":J
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1589
    return-void
.end method
