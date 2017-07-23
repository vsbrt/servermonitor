.class final Lcom/admob/android/ads/InterstitialAd$a;
.super Ljava/lang/Thread;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z

.field private b:Lcom/admob/android/ads/InterstitialAd;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/InterstitialAd;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->c:Ljava/lang/ref/WeakReference;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->a:Z

    .line 150
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const-string v0, "AdMobSDK"

    .line 159
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 160
    if-eqz v0, :cond_2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/admob/android/ads/InterstitialAd;->f()Lcom/admob/android/ads/InterstitialAd$c;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v2}, Lcom/admob/android/ads/InterstitialAd;->getKeywords()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v3}, Lcom/admob/android/ads/InterstitialAd;->getSearchQuery()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v4}, Lcom/admob/android/ads/InterstitialAd;->e()Lcom/admob/android/ads/InterstitialAd$Event;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/admob/android/ads/b;->a(Lcom/admob/android/ads/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/InterstitialAd$Event;)Lcom/admob/android/ads/j;

    move-result-object v0

    .line 170
    iget-boolean v1, p0, Lcom/admob/android/ads/InterstitialAd$a;->a:Z

    if-nez v1, :cond_0

    .line 171
    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    :try_start_1
    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception requesting a fresh ad."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->a:Z

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    throw v0

    .line 190
    :cond_2
    iget-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->a:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd$a;->b:Lcom/admob/android/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd;->c()V

    goto :goto_0
.end method
