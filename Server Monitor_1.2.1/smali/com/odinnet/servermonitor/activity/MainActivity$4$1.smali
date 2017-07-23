.class Lcom/odinnet/servermonitor/activity/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/activity/MainActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/odinnet/servermonitor/activity/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/activity/MainActivity$4;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4$1;->this$1:Lcom/odinnet/servermonitor/activity/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4$1;->this$1:Lcom/odinnet/servermonitor/activity/MainActivity$4;

    iget-object v0, v0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    # invokes: Lcom/odinnet/servermonitor/activity/MainActivity;->updateServerList()V
    invoke-static {v0}, Lcom/odinnet/servermonitor/activity/MainActivity;->access$000(Lcom/odinnet/servermonitor/activity/MainActivity;)V

    .line 248
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/MainActivity$4$1;->this$1:Lcom/odinnet/servermonitor/activity/MainActivity$4;

    iget-object v0, v0, Lcom/odinnet/servermonitor/activity/MainActivity$4;->val$dia:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 249
    return-void
.end method
