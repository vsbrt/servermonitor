.class public final Lcom/admob/android/ads/w;
.super Ljava/lang/Object;
.source "ClickURL.java"

# interfaces
.implements Lcom/admob/android/ads/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/w;->b:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    .line 25
    iput-boolean p2, p0, Lcom/admob/android/ads/w;->b:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "u"

    iget-object v2, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "p"

    iget-boolean v2, p0, Lcom/admob/android/ads/w;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    instance-of v0, p1, Lcom/admob/android/ads/w;

    if-eqz v0, :cond_4

    .line 69
    check-cast p1, Lcom/admob/android/ads/w;

    .line 71
    iget-object v0, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v5

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v5

    .line 73
    :goto_1
    iget-boolean v2, p0, Lcom/admob/android/ads/w;->b:Z

    iget-boolean v3, p1, Lcom/admob/android/ads/w;->b:Z

    if-eq v2, v3, :cond_2

    move v2, v5

    .line 75
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    move v0, v5

    .line 77
    :goto_3
    return v0

    :cond_0
    move v0, v4

    .line 71
    goto :goto_0

    :cond_1
    move v1, v4

    .line 72
    goto :goto_1

    :cond_2
    move v2, v4

    .line 73
    goto :goto_2

    :cond_3
    move v0, v4

    .line 75
    goto :goto_3

    :cond_4
    move v0, v4

    .line 77
    goto :goto_3
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/admob/android/ads/w;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method