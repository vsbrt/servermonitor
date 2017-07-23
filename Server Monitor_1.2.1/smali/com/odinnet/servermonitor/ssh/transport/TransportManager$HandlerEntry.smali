.class Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/odinnet/servermonitor/ssh/transport/TransportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandlerEntry"
.end annotation


# instance fields
.field high:I

.field low:I

.field mh:Lcom/odinnet/servermonitor/ssh/transport/MessageHandler;

.field final synthetic this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/ssh/transport/TransportManager;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/odinnet/servermonitor/ssh/transport/TransportManager$HandlerEntry;->this$0:Lcom/odinnet/servermonitor/ssh/transport/TransportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
