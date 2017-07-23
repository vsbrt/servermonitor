.class final Lcom/admob/android/ads/AdView$b;
.super Ljava/lang/Thread;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/AdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/AdView;)V
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 637
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$b;->a:Ljava/lang/ref/WeakReference;

    .line 638
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v0, "AdMobSDK"

    .line 643
    iget-object v0, p0, Lcom/admob/android/ads/AdView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/AdView;

    .line 644
    if-eqz p0, :cond_1

    .line 649
    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 650
    new-instance v7, Lcom/admob/android/ads/k;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v1, p0}, Lcom/admob/android/ads/k;-><init>(Lcom/admob/android/ads/j;Landroid/content/Context;Lcom/admob/android/ads/AdView;)V

    .line 652
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v8, v0

    .line 655
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/AdView$a;

    move-result-object v0

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->d(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/admob/android/ads/AdView;->e(Lcom/admob/android/ads/AdView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getPrimaryTextColor()I

    move-result v4

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getSecondaryTextColor()I

    move-result v5

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getBackgroundColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->a()Lcom/admob/android/ads/j$b;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->b()Lcom/admob/android/ads/AdView$f;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lcom/admob/android/ads/b;->a(Lcom/admob/android/ads/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILcom/admob/android/ads/k;ILcom/admob/android/ads/j$b;Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/AdView$f;)Lcom/admob/android/ads/j;

    move-result-object v0

    .line 668
    if-nez v0, :cond_0

    .line 676
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->f(Lcom/admob/android/ads/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    :cond_0
    invoke-static {p0, v12}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Z)Z

    .line 692
    invoke-static {p0, v13}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Z)V

    .line 695
    :cond_1
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v0

    .line 681
    :try_start_1
    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 682
    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception requesting a fresh ad."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    :cond_2
    invoke-static {p0}, Lcom/admob/android/ads/AdView;->f(Lcom/admob/android/ads/AdView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    invoke-static {p0, v12}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Z)Z

    .line 692
    invoke-static {p0, v13}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Z)V

    goto :goto_0

    .line 689
    :catchall_0
    move-exception v0

    invoke-static {p0, v12}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Z)Z

    .line 692
    invoke-static {p0, v13}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Z)V

    throw v0
.end method
