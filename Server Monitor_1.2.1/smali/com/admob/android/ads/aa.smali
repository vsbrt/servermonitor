.class public final Lcom/admob/android/ads/aa;
.super Lcom/admob/android/ads/view/AdMobWebView;
.source "AdMobFlexWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/aa$a;
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:Lorg/json/JSONObject;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/admob/android/ads/j;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v1, v0}, Lcom/admob/android/ads/view/AdMobWebView;-><init>(Landroid/content/Context;ZLjava/lang/ref/WeakReference;)V

    .line 28
    iput-object v0, p0, Lcom/admob/android/ads/aa;->a:Lorg/json/JSONObject;

    .line 29
    iput-object v0, p0, Lcom/admob/android/ads/aa;->b:Lorg/json/JSONObject;

    .line 30
    iput-boolean v1, p0, Lcom/admob/android/ads/aa;->e:Z

    .line 32
    new-instance v0, Lcom/admob/android/ads/aa$a;

    invoke-direct {v0, p0, p0, p2}, Lcom/admob/android/ads/aa$a;-><init>(Lcom/admob/android/ads/aa;Lcom/admob/android/ads/view/AdMobWebView;Lcom/admob/android/ads/j;)V

    iput-object v0, p0, Lcom/admob/android/ads/aa;->d:Lcom/admob/android/ads/ae;

    .line 33
    iget-object v0, p0, Lcom/admob/android/ads/aa;->d:Lcom/admob/android/ads/ae;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/aa;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v2, "null"

    .line 57
    iget-object v0, p0, Lcom/admob/android/ads/aa;->d:Lcom/admob/android/ads/ae;

    instance-of v0, v0, Lcom/admob/android/ads/aa$a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/admob/android/ads/aa;->d:Lcom/admob/android/ads/ae;

    check-cast v0, Lcom/admob/android/ads/aa$a;

    .line 61
    iget-boolean v0, v0, Lcom/admob/android/ads/aa$a;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/admob/android/ads/aa;->e:Z

    if-nez v0, :cond_0

    .line 62
    iput-boolean v5, p0, Lcom/admob/android/ads/aa;->e:Z

    .line 64
    iget-object v0, p0, Lcom/admob/android/ads/aa;->a:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    const-string v0, "null"

    move-object v0, v2

    .line 65
    :goto_0
    iget-object v1, p0, Lcom/admob/android/ads/aa;->b:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    const-string v1, "null"

    move-object v1, v2

    .line 66
    :goto_1
    const-string v2, "init"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/admob/android/ads/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/aa;->a:Lorg/json/JSONObject;

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/admob/android/ads/aa;->b:Lorg/json/JSONObject;

    goto :goto_1
.end method
