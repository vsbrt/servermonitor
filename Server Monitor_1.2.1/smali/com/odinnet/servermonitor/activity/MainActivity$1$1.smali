.class Lcom/odinnet/servermonitor/activity/MainActivity$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/odinnet/servermonitor/activity/MainActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/odinnet/servermonitor/activity/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/activity/MainActivity$1;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1$1;->this$1:Lcom/odinnet/servermonitor/activity/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 89
    :goto_0
    sget-boolean v1, Lcom/odinnet/servermonitor/data/Shared;->UPDATING:Z

    if-eqz v1, :cond_0

    .line 91
    const-wide/16 v1, 0x19

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1$1;->this$1:Lcom/odinnet/servermonitor/activity/MainActivity$1;

    iget-object v1, v1, Lcom/odinnet/servermonitor/activity/MainActivity$1;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    # invokes: Lcom/odinnet/servermonitor/activity/MainActivity;->updateServerList()V
    invoke-static {v1}, Lcom/odinnet/servermonitor/activity/MainActivity;->access$000(Lcom/odinnet/servermonitor/activity/MainActivity;)V

    .line 97
    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$1$1;->this$1:Lcom/odinnet/servermonitor/activity/MainActivity$1;

    iget-object v1, v1, Lcom/odinnet/servermonitor/activity/MainActivity$1;->val$dia:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 98
    return-void
.end method
