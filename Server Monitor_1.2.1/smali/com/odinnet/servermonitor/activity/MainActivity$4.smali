.class Lcom/odinnet/servermonitor/activity/MainActivity$4;
.super Ljava/lang/Thread;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/activity/MainActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    .line 238
    iput-object p1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    iput-object p2, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->val$dia:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    # getter for: Lcom/odinnet/servermonitor/activity/MainActivity;->serverID:I
    invoke-static {v0}, Lcom/odinnet/servermonitor/activity/MainActivity;->access$200(Lcom/odinnet/servermonitor/activity/MainActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/odinnet/servermonitor/ServerUtil;->updateServer(ILandroid/content/Context;)V

    .line 244
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    new-instance v1, Lcom/odinnet/servermonitor/activity/MainActivity$4$1;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/activity/MainActivity$4$1;-><init>(Lcom/odinnet/servermonitor/activity/MainActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method
