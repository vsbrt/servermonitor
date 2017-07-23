.class Lcom/odinnet/servermonitor/activity/MainActivity$1;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/activity/MainActivity;->updateServers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

.field final synthetic val$dia:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/activity/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    iput-object p2, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1;->val$dia:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-static {v0}, Lcom/odinnet/servermonitor/ServerUtil;->updateServers(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    new-instance v1, Lcom/odinnet/servermonitor/activity/MainActivity$1$1;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/activity/MainActivity$1$1;-><init>(Lcom/odinnet/servermonitor/activity/MainActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method
