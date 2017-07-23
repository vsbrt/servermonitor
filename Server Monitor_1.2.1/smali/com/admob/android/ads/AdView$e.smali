.class final Lcom/admob/android/ads/AdView$e;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
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

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/k;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;IZ)V
    .locals 1

    .prologue
    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$e;->a:Ljava/lang/ref/WeakReference;

    .line 823
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView$e;->b:Ljava/lang/ref/WeakReference;

    .line 824
    iput p3, p0, Lcom/admob/android/ads/AdView$e;->c:I

    .line 825
    iput-boolean p4, p0, Lcom/admob/android/ads/AdView$e;->d:Z

    .line 826
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const-string v3, "AdMobSDK"

    .line 832
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/AdView;

    .line 833
    iget-object v1, p0, Lcom/admob/android/ads/AdView$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admob/android/ads/k;

    .line 834
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 837
    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;)V

    .line 843
    invoke-virtual {v1}, Lcom/admob/android/ads/k;->c()Lcom/admob/android/ads/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/j;)V

    .line 846
    iget v2, p0, Lcom/admob/android/ads/AdView$e;->c:I

    if-nez v2, :cond_2

    .line 848
    iget-boolean v2, p0, Lcom/admob/android/ads/AdView$e;->d:Z

    if-eqz v2, :cond_1

    .line 850
    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->b(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 866
    const-string v1, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v3, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 867
    const-string v1, "AdMobSDK"

    const-string v1, "Unhandled exception placing AdContainer into AdView."

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 860
    :cond_2
    :try_start_1
    invoke-static {v0, v1}, Lcom/admob/android/ads/AdView;->c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
