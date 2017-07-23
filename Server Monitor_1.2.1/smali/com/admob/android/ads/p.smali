.class public final Lcom/admob/android/ads/p;
.super Ljava/lang/Object;
.source "MovieInfo.java"

# interfaces
.implements Lcom/admob/android/ads/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:D

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/admob/android/ads/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/p;->l:Z

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "u"

    iget-object v2, p0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "iau"

    iget-object v2, p0, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "eau"

    iget-object v2, p0, Lcom/admob/android/ads/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "t"

    iget-object v2, p0, Lcom/admob/android/ads/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "c"

    iget v2, p0, Lcom/admob/android/ads/p;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v1, "msm"

    iget v2, p0, Lcom/admob/android/ads/p;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string v1, "s"

    iget-object v2, p0, Lcom/admob/android/ads/p;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "sin"

    iget-object v2, p0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "sd"

    iget-wide v2, p0, Lcom/admob/android/ads/p;->i:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 67
    const-string v1, "skd"

    iget-object v2, p0, Lcom/admob/android/ads/p;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "sku"

    iget-object v2, p0, Lcom/admob/android/ads/p;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "nosk"

    iget-boolean v2, p0, Lcom/admob/android/ads/p;->l:Z

    invoke-static {v2}, Lcom/admob/android/ads/r;->a(Z)B

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 70
    const-string v1, "rd"

    iget-object v2, p0, Lcom/admob/android/ads/p;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "ru"

    iget-object v2, p0, Lcom/admob/android/ads/p;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "b"

    iget-object v2, p0, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    invoke-static {v2}, Lcom/admob/android/ads/AdView$a;->a(Ljava/util/Vector;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 74
    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)Z
    .locals 4

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    .line 85
    :cond_0
    const-string v0, "u"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->a:Ljava/lang/String;

    .line 86
    const-string v0, "iau"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->b:Ljava/lang/String;

    .line 87
    const-string v0, "eau"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->c:Ljava/lang/String;

    .line 88
    const-string v0, "t"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->d:Ljava/lang/String;

    .line 89
    const-string v0, "c"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/admob/android/ads/p;->e:I

    .line 90
    const-string v0, "msm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/admob/android/ads/p;->f:I

    .line 91
    const-string v0, "s"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->g:Ljava/lang/String;

    .line 92
    const-string v0, "sin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    .line 93
    const-string v0, "sd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/p;->i:D

    .line 94
    const-string v0, "skd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->j:Ljava/lang/String;

    .line 95
    const-string v0, "sku"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->k:Ljava/lang/String;

    .line 96
    const-string v0, "nosk"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Lcom/admob/android/ads/r;->a(B)Z

    move-result v0

    iput-boolean v0, p0, Lcom/admob/android/ads/p;->l:Z

    .line 97
    const-string v0, "rd"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->m:Ljava/lang/String;

    .line 98
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/p;->n:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    .line 101
    const-string v0, "b"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_3

    .line 103
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 105
    if-eqz v0, :cond_1

    .line 106
    new-instance v3, Lcom/admob/android/ads/o;

    invoke-direct {v3}, Lcom/admob/android/ads/o;-><init>()V

    .line 107
    invoke-virtual {v3, v0}, Lcom/admob/android/ads/o;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_2
    iput-object v1, p0, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    .line 115
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/admob/android/ads/p;->e:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/p;->o:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/p;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/admob/android/ads/p;->i:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
