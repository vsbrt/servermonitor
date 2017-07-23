.class public final Lcom/admob/android/ads/z$a;
.super Lcom/admob/android/ads/ae;
.source "AdMobCanvasView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/admob/android/ads/z;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/z;Lcom/admob/android/ads/z;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/admob/android/ads/z;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/admob/android/ads/z$a;->a:Lcom/admob/android/ads/z;

    .line 104
    invoke-direct {p0, p2, p3}, Lcom/admob/android/ads/ae;-><init>(Lcom/admob/android/ads/view/AdMobWebView;Ljava/lang/ref/WeakReference;)V

    .line 105
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    const-string v0, "http://mm.admob.com/static/android/canvas.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/z$a;->a:Lcom/admob/android/ads/z;

    iget-boolean v0, v0, Lcom/admob/android/ads/z;->b:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v1, "javascript:cb(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lcom/admob/android/ads/z$a;->a:Lcom/admob/android/ads/z;

    iget-object v1, v1, Lcom/admob/android/ads/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lcom/admob/android/ads/z$a;->a:Lcom/admob/android/ads/z;

    iget-object v1, v1, Lcom/admob/android/ads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/admob/android/ads/z$a;->a:Lcom/admob/android/ads/z;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/admob/android/ads/z;->b:Z

    .line 122
    iget-object v1, p0, Lcom/admob/android/ads/z$a;->a:Lcom/admob/android/ads/z;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/admob/android/ads/z;->loadUrl(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-void
.end method
