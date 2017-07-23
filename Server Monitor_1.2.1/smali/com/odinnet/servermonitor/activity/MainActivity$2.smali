.class Lcom/odinnet/servermonitor/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/odinnet/servermonitor/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$2;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 204
    new-instance v0, Lcom/odinnet/servermonitor/data/Database;

    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$2;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, v1}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 205
    .local v0, "db":Lcom/odinnet/servermonitor/data/Database;
    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$2;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    # getter for: Lcom/odinnet/servermonitor/activity/MainActivity;->componentID:I
    invoke-static {v1}, Lcom/odinnet/servermonitor/activity/MainActivity;->access$100(Lcom/odinnet/servermonitor/activity/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/Database;->deleteComponent(I)V

    .line 206
    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/MainActivity$2;->this$0:Lcom/odinnet/servermonitor/activity/MainActivity;

    # invokes: Lcom/odinnet/servermonitor/activity/MainActivity;->updateServerList()V
    invoke-static {v1}, Lcom/odinnet/servermonitor/activity/MainActivity;->access$000(Lcom/odinnet/servermonitor/activity/MainActivity;)V

    .line 207
    return-void
.end method
