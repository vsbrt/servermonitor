.class public abstract Lcom/admob/android/ads/f;
.super Ljava/lang/Object;
.source "AdMobConnectorBase.java"

# interfaces
.implements Lcom/admob/android/ads/e;


# static fields
.field private static m:Ljava/util/concurrent/Executor;

.field private static n:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:Ljava/lang/Exception;

.field protected d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:I

.field protected g:Ljava/lang/String;

.field protected h:Lcom/admob/android/ads/h;

.field protected i:Ljava/net/URL;

.field protected j:[B

.field protected k:Z

.field protected l:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/f;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/h;ILjava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/admob/android/ads/h;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object v1, p0, Lcom/admob/android/ads/f;->c:Ljava/lang/Exception;

    .line 209
    iput-object p1, p0, Lcom/admob/android/ads/f;->o:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/admob/android/ads/f;->g:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/admob/android/ads/f;->h:Lcom/admob/android/ads/h;

    .line 212
    iput p4, p0, Lcom/admob/android/ads/f;->b:I

    .line 213
    iput-object p5, p0, Lcom/admob/android/ads/f;->d:Ljava/util/Map;

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/f;->k:Z

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/admob/android/ads/f;->e:I

    .line 216
    const/4 v0, 0x3

    iput v0, p0, Lcom/admob/android/ads/f;->f:I

    .line 218
    if-eqz p6, :cond_0

    .line 220
    iput-object p6, p0, Lcom/admob/android/ads/f;->l:Ljava/lang/String;

    .line 221
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/admob/android/ads/f;->a:Ljava/lang/String;

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-object v1, p0, Lcom/admob/android/ads/f;->l:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/admob/android/ads/f;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static h()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "AdMobSDK"

    const-string v3, "; "

    .line 129
    sget-object v0, Lcom/admob/android/ads/f;->n:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 138
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_5

    .line 155
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    .line 159
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 173
    const-string v2, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 179
    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    :cond_2
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (AdMob-ANDROID-%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "20101012"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/f;->n:Ljava/lang/String;

    .line 188
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phone\'s user-agent is:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/admob/android/ads/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_3
    sget-object v0, Lcom/admob/android/ads/f;->n:Ljava/lang/String;

    return-object v0

    .line 146
    :cond_4
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 166
    :cond_5
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 333
    iput p1, p0, Lcom/admob/android/ads/f;->f:I

    .line 334
    return-void
.end method

.method public a(Lcom/admob/android/ads/h;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/admob/android/ads/f;->h:Lcom/admob/android/ads/h;

    .line 277
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/admob/android/ads/f;->p:Ljava/lang/Object;

    .line 348
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/admob/android/ads/f;->a:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public final a()[B
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/admob/android/ads/f;->j:[B

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/admob/android/ads/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/net/URL;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/admob/android/ads/f;->i:Ljava/net/URL;

    return-object v0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/admob/android/ads/f;->m:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/f;->m:Ljava/util/concurrent/Executor;

    :cond_0
    sget-object v0, Lcom/admob/android/ads/f;->m:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/admob/android/ads/f;->p:Ljava/lang/Object;

    return-object v0
.end method
