.class final Lcom/admob/android/ads/aa$a$1;
.super Ljava/util/TimerTask;
.source "AdMobFlexWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/aa$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/admob/android/ads/aa$a;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/aa$a;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/admob/android/ads/aa$a$1;->a:Lcom/admob/android/ads/aa$a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/admob/android/ads/aa$a$1;->a:Lcom/admob/android/ads/aa$a;

    iget-boolean v0, v0, Lcom/admob/android/ads/aa$a;->a:Z

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/admob/android/ads/aa$a$1;->a:Lcom/admob/android/ads/aa$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/admob/android/ads/aa$a;->a:Z

    .line 96
    iget-object v0, p0, Lcom/admob/android/ads/aa$a$1;->a:Lcom/admob/android/ads/aa$a;

    iget-object v0, v0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/admob/android/ads/aa$a$1;->a:Lcom/admob/android/ads/aa$a;

    iget-object v0, v0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/j;->a(Z)V

    .line 100
    :cond_0
    return-void
.end method
