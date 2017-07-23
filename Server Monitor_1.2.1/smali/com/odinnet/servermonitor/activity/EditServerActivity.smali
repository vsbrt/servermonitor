.class public Lcom/odinnet/servermonitor/activity/EditServerActivity;
.super Landroid/app/Activity;
.source "EditServerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnSaveServer:Landroid/widget/Button;

.field private chkPing:Landroid/widget/CheckBox;

.field private serverID:I

.field private txtHost:Landroid/widget/EditText;

.field private txtServerName:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private validate()Z
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x1

    .line 86
    .local v1, "valid":Z
    const-string v0, ""

    .line 87
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtServerName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f05002b

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtHost:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f05002c

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 99
    :cond_2
    if-nez v1, :cond_3

    .line 100
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 103
    :cond_3
    return v1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v3, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->btnSaveServer:Landroid/widget/Button;

    if-ne p1, v3, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->validate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    new-instance v0, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "db":Lcom/odinnet/servermonitor/data/Database;
    new-instance v2, Lcom/odinnet/servermonitor/data/Server;

    invoke-direct {v2}, Lcom/odinnet/servermonitor/data/Server;-><init>()V

    .line 54
    .local v2, "server":Lcom/odinnet/servermonitor/data/Server;
    iget v3, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->serverID:I

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setServerID(I)V

    .line 55
    iget-object v3, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtHost:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setHost(Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtServerName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setServerName(Ljava/lang/String;)V

    .line 58
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setStatusMessage(Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setLastUpdate(Ljava/util/Date;)V

    .line 60
    iget-object v3, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->chkPing:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setPing(Z)V

    .line 61
    invoke-virtual {v2}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    sget-object v3, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 66
    :goto_0
    invoke-virtual {v0, v2}, Lcom/odinnet/servermonitor/data/Database;->updateServer(Lcom/odinnet/servermonitor/data/Server;)V

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->finish()V

    .line 72
    .end local v0    # "db":Lcom/odinnet/servermonitor/data/Database;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "server":Lcom/odinnet/servermonitor/data/Server;
    :cond_0
    return-void

    .line 64
    .restart local v0    # "db":Lcom/odinnet/servermonitor/data/Database;
    .restart local v2    # "server":Lcom/odinnet/servermonitor/data/Server;
    :cond_1
    sget-object v3, Lcom/odinnet/servermonitor/data/Status;->COMPONENT_OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v2, v3}, Lcom/odinnet/servermonitor/data/Server;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "serverID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->serverID:I

    .line 32
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtServerName:Landroid/widget/EditText;

    .line 33
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtHost:Landroid/widget/EditText;

    .line 34
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->chkPing:Landroid/widget/CheckBox;

    .line 35
    const v2, 0x7f070018

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->btnSaveServer:Landroid/widget/Button;

    .line 37
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->btnSaveServer:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance v0, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v0, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 40
    .local v0, "db":Lcom/odinnet/servermonitor/data/Database;
    iget v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->serverID:I

    invoke-virtual {v0, v2}, Lcom/odinnet/servermonitor/data/Database;->getServer(I)Lcom/odinnet/servermonitor/data/Server;

    move-result-object v1

    .line 42
    .local v1, "server":Lcom/odinnet/servermonitor/data/Server;
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtServerName:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Server;->getServerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->txtHost:Landroid/widget/EditText;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Server;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditServerActivity;->chkPing:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Lcom/odinnet/servermonitor/data/Server;->isPing()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/EditServerActivity;->finish()V

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
