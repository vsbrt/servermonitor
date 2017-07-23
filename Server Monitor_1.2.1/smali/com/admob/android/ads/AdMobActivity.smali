.class public Lcom/admob/android/ads/AdMobActivity;
.super Landroid/app/Activity;
.source "AdMobActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdMobActivity$1;
    }
.end annotation


# instance fields
.field private a:Lcom/admob/android/ads/r;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/admob/android/ads/af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    iget-boolean v0, v0, Lcom/admob/android/ads/r;->l:Z

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    const-string v1, "admob_activity"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/admob/android/ads/AdMobActivity;->setResult(ILandroid/content/Intent;)V

    .line 172
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 173
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/af;

    .line 182
    invoke-interface {v0, p1}, Lcom/admob/android/ads/af;->a(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 187
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x2

    const-string v7, "AdMobSDK"

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->b:Ljava/util/Vector;

    .line 103
    invoke-virtual {p0}, Lcom/admob/android/ads/AdMobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    const-string v1, "o"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/admob/android/ads/r;

    invoke-direct {v1}, Lcom/admob/android/ads/r;-><init>()V

    .line 107
    invoke-virtual {v1, v0}, Lcom/admob/android/ads/r;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iput-object v1, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    if-nez v0, :cond_2

    .line 113
    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v7, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "AdMobSDK"

    const-string v0, "Unable to get openerInfo from intent"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    :goto_1
    return-void

    .line 110
    :cond_1
    iput-object v3, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    iget-object v0, v0, Lcom/admob/android/ads/r;->a:Lcom/admob/android/ads/j$a;

    .line 124
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 125
    sget-object v1, Lcom/admob/android/ads/AdMobActivity$1;->a:[I

    invoke-virtual {v0}, Lcom/admob/android/ads/j$a;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 135
    :goto_2
    if-eqz v0, :cond_6

    .line 136
    sget-object v1, Lcom/admob/android/ads/AdMobActivity$1;->b:[I

    iget-object v3, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    iget-object v3, v3, Lcom/admob/android/ads/r;->e:Lcom/admob/android/ads/q$a;

    invoke-virtual {v3}, Lcom/admob/android/ads/q$a;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_1

    .line 152
    const-string v1, "AdMobSDK"

    invoke-static {v7, v8}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 153
    const-string v1, "AdMobSDK"

    const-string v1, "Setting target orientation to sensor"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdMobActivity;->setRequestedOrientation(I)V

    .line 158
    :goto_3
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdMobActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 128
    :pswitch_0
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdMobActivity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdMobActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    iget-object v1, v1, Lcom/admob/android/ads/r;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    iget-boolean v3, v3, Lcom/admob/android/ads/r;->f:Z

    iget-object v4, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    iget-object v4, v4, Lcom/admob/android/ads/r;->g:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/admob/android/ads/k;->a(Landroid/content/Context;)F

    move-result v5

    invoke-static/range {v0 .. v6}, Lcom/admob/android/ads/view/AdMobWebView;->a(Landroid/content/Context;Ljava/lang/String;ZZLandroid/graphics/Point;FLjava/lang/ref/WeakReference;)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->a:Lcom/admob/android/ads/r;

    invoke-virtual {p0}, Lcom/admob/android/ads/AdMobActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/admob/android/ads/ad;

    invoke-direct {v3, v1, v6}, Lcom/admob/android/ads/ad;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v3, v0}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/r;)V

    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_2

    .line 138
    :pswitch_2
    const-string v1, "AdMobSDK"

    invoke-static {v7, v8}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    const-string v1, "AdMobSDK"

    const-string v1, "Setting target orientation to landscape"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_4
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdMobActivity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 144
    :pswitch_3
    const-string v1, "AdMobSDK"

    invoke-static {v7, v8}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 145
    const-string v1, "AdMobSDK"

    const-string v1, "Setting target orientation to portrait"

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdMobActivity;->setRequestedOrientation(I)V

    goto :goto_3

    .line 160
    :cond_6
    invoke-virtual {p0}, Lcom/admob/android/ads/AdMobActivity;->finish()V

    goto/16 :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 136
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/admob/android/ads/AdMobActivity;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    return-void
.end method
