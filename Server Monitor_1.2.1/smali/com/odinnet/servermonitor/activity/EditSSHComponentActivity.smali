.class public Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;
.super Landroid/app/Activity;
.source "EditSSHComponentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnAddComponent:Landroid/widget/Button;

.field private componentID:I

.field private txtComponentName:Landroid/widget/EditText;

.field private txtLocalPort:Landroid/widget/EditText;

.field private txtRemotePort:Landroid/widget/EditText;

.field private txtSSHPassword:Landroid/widget/EditText;

.field private txtSSHPort:Landroid/widget/EditText;

.field private txtSSHUsername:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private validate()Z
    .locals 6

    .prologue
    const v5, 0xffff

    const-string v4, "\n"

    .line 98
    const/4 v1, 0x1

    .line 99
    .local v1, "valid":Z
    const-string v0, ""

    .line 101
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtComponentName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f05002d

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const/4 v1, 0x0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f05002e

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f05002f

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    const/4 v1, 0x0

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtRemotePort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050030

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    const/4 v1, 0x0

    .line 134
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtLocalPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050032

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const/4 v1, 0x0

    .line 149
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050034

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    .line 165
    :cond_a
    :goto_2
    if-nez v1, :cond_b

    .line 166
    const/16 v2, 0x1388

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 168
    :cond_b
    return v1

    .line 126
    :cond_c
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtRemotePort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_d

    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtRemotePort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_6

    .line 127
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050031

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 141
    :cond_f
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtLocalPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtLocalPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_8

    .line 142
    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050033

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 156
    :cond_12
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_13

    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPort:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_a

    .line 157
    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f050035

    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    const/4 v1, 0x0

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->btnAddComponent:Landroid/widget/Button;

    if-ne p1, v4, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->validate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    new-instance v2, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v2, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 63
    .local v2, "db":Lcom/odinnet/servermonitor/data/Database;
    iget v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->componentID:I

    invoke-virtual {v2, v4}, Lcom/odinnet/servermonitor/data/Database;->getServerComponent(I)Lcom/odinnet/servermonitor/data/ServerComponent;

    move-result-object v0

    .line 64
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtComponentName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setComponentName(Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setLastUpdate(Ljava/util/Date;)V

    .line 66
    sget-object v4, Lcom/odinnet/servermonitor/data/Status;->OFFLINE:Lcom/odinnet/servermonitor/data/Status;

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatus(Lcom/odinnet/servermonitor/data/Status;)V

    .line 67
    const-string v4, ""

    invoke-virtual {v0, v4}, Lcom/odinnet/servermonitor/data/ServerComponent;->setStatusMessage(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/odinnet/servermonitor/data/ComponentConnection;

    invoke-direct {v1}, Lcom/odinnet/servermonitor/data/ComponentConnection;-><init>()V

    .line 70
    .local v1, "connection":Lcom/odinnet/servermonitor/data/ComponentConnection;
    sget-object v4, Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;->SSH:Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setConnectionType(Lcom/odinnet/servermonitor/data/ComponentConnection$ConnectionType;)V

    .line 71
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtLocalPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setLocalPort(I)V

    .line 72
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtRemotePort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setRemotePort(I)V

    .line 73
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPassword(Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPort:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshPort(I)V

    .line 75
    iget-object v4, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHUsername:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->setSshUsername(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v1}, Lcom/odinnet/servermonitor/data/ServerComponent;->setConnection(Lcom/odinnet/servermonitor/data/ComponentConnection;)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/odinnet/servermonitor/data/Database;->updateComponent(Lcom/odinnet/servermonitor/data/ServerComponent;)V

    .line 80
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->startActivity(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->finish()V

    .line 85
    .end local v0    # "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    .end local v1    # "connection":Lcom/odinnet/servermonitor/data/ComponentConnection;
    .end local v2    # "db":Lcom/odinnet/servermonitor/data/Database;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const-string v5, ""

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "componentID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->componentID:I

    .line 35
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtComponentName:Landroid/widget/EditText;

    .line 36
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtRemotePort:Landroid/widget/EditText;

    .line 37
    const v2, 0x7f07000c

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtLocalPort:Landroid/widget/EditText;

    .line 38
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPort:Landroid/widget/EditText;

    .line 39
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHUsername:Landroid/widget/EditText;

    .line 40
    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPassword:Landroid/widget/EditText;

    .line 42
    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->btnAddComponent:Landroid/widget/Button;

    .line 44
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->btnAddComponent:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v1, Lcom/odinnet/servermonitor/data/Database;

    invoke-direct {v1, p0}, Lcom/odinnet/servermonitor/data/Database;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "db":Lcom/odinnet/servermonitor/data/Database;
    iget v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->componentID:I

    invoke-virtual {v1, v2}, Lcom/odinnet/servermonitor/data/Database;->getServerComponent(I)Lcom/odinnet/servermonitor/data/ServerComponent;

    move-result-object v0

    .line 49
    .local v0, "component":Lcom/odinnet/servermonitor/data/ServerComponent;
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtComponentName:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtRemotePort:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getRemotePort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtLocalPort:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getLocalPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPort:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v2, p0, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->txtSSHPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/odinnet/servermonitor/data/ServerComponent;->getConnection()Lcom/odinnet/servermonitor/data/ComponentConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/odinnet/servermonitor/data/ComponentConnection;->getSshPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/EditSSHComponentActivity;->finish()V

    .line 94
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
