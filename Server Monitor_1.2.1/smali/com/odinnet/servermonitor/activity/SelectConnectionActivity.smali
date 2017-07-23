.class public Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;
.super Landroid/app/Activity;
.source "SelectConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnSSHConnection:Landroid/widget/Button;

.field private btnTCPConnection:Landroid/widget/Button;

.field private serverID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v2, "serverID"

    .line 32
    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->btnTCPConnection:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/AddTCPComponentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "serverID"

    iget v1, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->serverID:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->finish()V

    .line 45
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->btnSSHConnection:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/AddSSHComponentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "serverID"

    iget v1, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->serverID:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "serverID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->serverID:I

    .line 24
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->btnTCPConnection:Landroid/widget/Button;

    .line 25
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->btnTCPConnection:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->btnSSHConnection:Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->btnSSHConnection:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SelectConnectionActivity;->finish()V

    .line 54
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
