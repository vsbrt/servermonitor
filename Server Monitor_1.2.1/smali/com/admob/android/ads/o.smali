.class public final Lcom/admob/android/ads/o;
.super Ljava/lang/Object;
.source "MovieButton.java"

# interfaces
.implements Lcom/admob/android/ads/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/admob/android/ads/r;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/admob/android/ads/r;

    invoke-direct {v0}, Lcom/admob/android/ads/r;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/o;->d:Lcom/admob/android/ads/r;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    const-string v1, "ad"

    iget-object v2, p0, Lcom/admob/android/ads/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "au"

    iget-object v2, p0, Lcom/admob/android/ads/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "t"

    iget-object v2, p0, Lcom/admob/android/ads/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "oi"

    iget-object v2, p0, Lcom/admob/android/ads/o;->d:Lcom/admob/android/ads/r;

    invoke-static {v2}, Lcom/admob/android/ads/AdView$a;->a(Lcom/admob/android/ads/n;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    const-string v1, "ap"

    iget-object v2, p0, Lcom/admob/android/ads/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "json"

    iget-object v2, p0, Lcom/admob/android/ads/o;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_0

    move v0, v2

    .line 63
    :goto_0
    return v0

    .line 52
    :cond_0
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/o;->a:Ljava/lang/String;

    .line 53
    const-string v0, "au"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/o;->b:Ljava/lang/String;

    .line 54
    const-string v0, "t"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/o;->c:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/admob/android/ads/o;->d:Lcom/admob/android/ads/r;

    const-string v1, "oi"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/r;->a(Landroid/os/Bundle;)Z

    move-result v0

    .line 57
    if-nez v0, :cond_1

    move v0, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "ap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/o;->e:Ljava/lang/String;

    .line 61
    const-string v0, "json"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/o;->f:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    goto :goto_0
.end method
