.class public final Lcom/admob/android/ads/ad$e;
.super Ljava/lang/Object;
.source "AdMobVideoViewNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/ad;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/ad;Lcom/admob/android/ads/o;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admob/android/ads/ad;",
            "Lcom/admob/android/ads/o;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$e;->a:Ljava/lang/ref/WeakReference;

    .line 600
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/ad$e;->b:Ljava/lang/ref/WeakReference;

    .line 601
    iput-object p3, p0, Lcom/admob/android/ads/ad$e;->c:Ljava/lang/ref/WeakReference;

    .line 602
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v6, "AdMobSDK"

    .line 605
    iget-object v0, p0, Lcom/admob/android/ads/ad$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/ad;

    .line 606
    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/admob/android/ads/ad;->a(Lcom/admob/android/ads/ad;Z)V

    .line 612
    iget-object v1, p0, Lcom/admob/android/ads/ad$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admob/android/ads/o;

    .line 613
    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v0}, Lcom/admob/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 620
    iget-boolean v3, v0, Lcom/admob/android/ads/ad;->j:Z

    if-nez v3, :cond_4

    .line 621
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/admob/android/ads/ad;->j:Z

    .line 622
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 623
    const-string v4, "event"

    const-string v5, "interaction"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :goto_1
    iget-object v4, v0, Lcom/admob/android/ads/ad;->f:Lcom/admob/android/ads/d;

    iget-object v5, v1, Lcom/admob/android/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/admob/android/ads/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 628
    invoke-virtual {v0}, Lcom/admob/android/ads/ad;->e()Z

    move-result v3

    .line 629
    if-eqz v3, :cond_2

    .line 630
    invoke-virtual {v0}, Lcom/admob/android/ads/ad;->f()V

    .line 632
    :cond_2
    invoke-virtual {v0, v3}, Lcom/admob/android/ads/ad;->a(Z)V

    .line 634
    new-instance v3, Lcom/admob/android/ads/q;

    invoke-direct {v3}, Lcom/admob/android/ads/q;-><init>()V

    .line 636
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v1, v1, Lcom/admob/android/ads/o;->f:Ljava/lang/String;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v4, v1}, Lcom/admob/android/ads/q;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/admob/android/ads/u;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/admob/android/ads/q;->b()V

    .line 645
    iget-object v1, p0, Lcom/admob/android/ads/ad$e;->c:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/admob/android/ads/ad$e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 647
    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {v3, p0, v0}, Lcom/admob/android/ads/q;->a(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 638
    :catch_0
    move-exception v1

    .line 639
    const-string v2, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v6, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 640
    const-string v2, "AdMobSDK"

    const-string v2, "Could not create JSONObject from button click"

    invoke-static {v6, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    move-object v3, v4

    goto :goto_1
.end method
