.class public final Lcom/admob/android/ads/z;
.super Lcom/admob/android/ads/view/AdMobWebView;
.source "AdMobCanvasView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/z$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field private e:Lcom/admob/android/ads/q;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/admob/android/ads/q;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/admob/android/ads/view/AdMobWebView;-><init>(Landroid/content/Context;ZLjava/lang/ref/WeakReference;)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/z;->b:Z

    .line 61
    iput-object p2, p0, Lcom/admob/android/ads/z;->a:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/admob/android/ads/z;->e:Lcom/admob/android/ads/q;

    .line 63
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/ref/WeakReference;)Lcom/admob/android/ads/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)",
            "Lcom/admob/android/ads/ae;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/admob/android/ads/z$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/admob/android/ads/z$a;-><init>(Lcom/admob/android/ads/z;Lcom/admob/android/ads/z;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/admob/android/ads/z;->e:Lcom/admob/android/ads/q;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/admob/android/ads/z;->e:Lcom/admob/android/ads/q;

    invoke-virtual {v0}, Lcom/admob/android/ads/q;->a()V

    .line 84
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/z;->c:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/admob/android/ads/z;->a()V

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/admob/android/ads/view/AdMobWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
