.class public Lcom/admob/android/ads/InterstitialAd;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/InterstitialAd$d;,
        Lcom/admob/android/ads/InterstitialAd$f;,
        Lcom/admob/android/ads/InterstitialAd$b;,
        Lcom/admob/android/ads/InterstitialAd$e;,
        Lcom/admob/android/ads/InterstitialAd$a;,
        Lcom/admob/android/ads/InterstitialAd$c;,
        Lcom/admob/android/ads/InterstitialAd$Event;
    }
.end annotation


# static fields
.field public static final ADMOB_INTENT_BOOLEAN:Ljava/lang/String; = "admob_activity"

.field private static a:Landroid/os/Handler;

.field private static b:Ljava/util/Timer;

.field private static c:Lcom/admob/android/ads/InterstitialAd$a;


# instance fields
.field private d:Lcom/admob/android/ads/InterstitialAd$Event;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admob/android/ads/InterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:Lcom/admob/android/ads/j;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/admob/android/ads/InterstitialAd$c;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 198
    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    .line 200
    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    .line 201
    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;

    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/InterstitialAdListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd;->d:Lcom/admob/android/ads/InterstitialAd$Event;

    .line 231
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->e:Ljava/lang/ref/WeakReference;

    .line 232
    iput-boolean v2, p0, Lcom/admob/android/ads/InterstitialAd;->f:Z

    .line 233
    iput-boolean v2, p0, Lcom/admob/android/ads/InterstitialAd;->g:Z

    .line 234
    iput-object v1, p0, Lcom/admob/android/ads/InterstitialAd;->h:Lcom/admob/android/ads/j;

    .line 235
    iput-object v1, p0, Lcom/admob/android/ads/InterstitialAd;->i:Ljava/lang/String;

    .line 236
    iput-object v1, p0, Lcom/admob/android/ads/InterstitialAd;->j:Ljava/lang/String;

    .line 237
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$c;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/InterstitialAd$c;-><init>(Lcom/admob/android/ads/InterstitialAd;)V

    iput-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->k:Lcom/admob/android/ads/InterstitialAd$c;

    .line 238
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/admob/android/ads/InterstitialAd;->l:J

    .line 240
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    .line 243
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/InterstitialAd;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v3, "AdMobSDK"

    .line 77
    invoke-static {}, Lcom/admob/android/ads/InterstitialAd;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/admob/android/ads/InterstitialAd;->g()V

    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->k:Lcom/admob/android/ads/InterstitialAd$c;

    iput-object v1, v0, Lcom/admob/android/ads/InterstitialAd$c;->a:Lcom/admob/android/ads/InterstitialAd;

    :try_start_0
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/admob/android/ads/InterstitialAd$a;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v3, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/admob/android/ads/j;->n()F

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request timed out (client timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/InterstitialAd;->c()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/admob/android/ads/InterstitialAd;Lcom/admob/android/ads/j;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd;->h:Lcom/admob/android/ads/j;

    return-void
.end method

.method private static g()V
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 383
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 384
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    .line 386
    :cond_0
    return-void
.end method

.method private static h()Z
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 273
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/InterstitialAd$e;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/InterstitialAd$e;-><init>(Lcom/admob/android/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    :cond_0
    return-void
.end method

.method final a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x6

    const-string v3, "AdMobSDK"

    .line 450
    iget-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd;->f:Z

    if-nez v0, :cond_2

    .line 451
    iget-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd;->g:Z

    if-eqz v0, :cond_1

    .line 452
    const-string v0, "AdMobSDK"

    invoke-static {v3, v4}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const-string v0, "AdMobSDK"

    const-string v0, "Show has already been called.  Please create and request a new interstitial"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const-string v0, "AdMobSDK"

    invoke-static {v3, v4}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    const-string v0, "AdMobSDK"

    const-string v0, "Cannot call show before interstitial is ready"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd;->g:Z

    .line 462
    iput-boolean v1, p0, Lcom/admob/android/ads/InterstitialAd;->f:Z

    .line 463
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->h:Lcom/admob/android/ads/j;

    invoke-virtual {v0}, Lcom/admob/android/ads/j;->a()Lcom/admob/android/ads/q;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, v0, Lcom/admob/android/ads/q;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_4
    const-string v0, "AdMobSDK"

    invoke-static {v3, v4}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v0, "Could not find a resolving intent on ad click"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method final b()V
    .locals 5

    .prologue
    const-string v4, "AdMobSDK"

    .line 278
    invoke-static {}, Lcom/admob/android/ads/InterstitialAd;->g()V

    .line 279
    iget-wide v0, p0, Lcom/admob/android/ads/InterstitialAd;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/InterstitialAd;->l:J

    sub-long/2addr v0, v2

    .line 281
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total request time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/InterstitialAd;->f:Z

    .line 284
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;

    .line 285
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/InterstitialAdListener;

    .line 286
    if-eqz v0, :cond_1

    .line 288
    :try_start_0
    invoke-interface {v0, p0}, Lcom/admob/android/ads/InterstitialAdListener;->onReceiveInterstitial(Lcom/admob/android/ads/InterstitialAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    const-string v1, "AdMobSDK"

    const-string v1, "Unhandled exception raised in your InterstitialAdListener.onReceiveInterstitial."

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 313
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/InterstitialAd$b;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/InterstitialAd$b;-><init>(Lcom/admob/android/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_0
    return-void
.end method

.method final d()V
    .locals 3

    .prologue
    .line 318
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;

    .line 319
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/InterstitialAdListener;

    .line 320
    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    invoke-interface {v0, p0}, Lcom/admob/android/ads/InterstitialAdListener;->onFailedToReceiveInterstitial(Lcom/admob/android/ads/InterstitialAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your InterstitialAdListener.onFailedToReceiveInterstitial."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method final e()Lcom/admob/android/ads/InterstitialAd$Event;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->d:Lcom/admob/android/ads/InterstitialAd$Event;

    return-object v0
.end method

.method final f()Lcom/admob/android/ads/InterstitialAd$c;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->k:Lcom/admob/android/ads/InterstitialAd$c;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method public requestAd(Landroid/content/Context;)V
    .locals 5

    .prologue
    const-string v1, "AdMobSDK"

    .line 340
    invoke-static {}, Lcom/admob/android/ads/InterstitialAd;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    const-string v0, "AdMobSDK"

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "AdMobSDK"

    const-string v0, "A request is already in progress.  This request will fail."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/InterstitialAd;->c()V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 346
    :cond_2
    new-instance v0, Lcom/admob/android/ads/InterstitialAd$a;

    invoke-direct {v0, p0, p1}, Lcom/admob/android/ads/InterstitialAd$a;-><init>(Lcom/admob/android/ads/InterstitialAd;Landroid/content/Context;)V

    .line 347
    sput-object v0, Lcom/admob/android/ads/InterstitialAd;->c:Lcom/admob/android/ads/InterstitialAd$a;

    invoke-virtual {v0}, Lcom/admob/android/ads/InterstitialAd$a;->start()V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/InterstitialAd;->l:J

    .line 349
    invoke-static {p1}, Lcom/admob/android/ads/j;->a(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/admob/android/ads/InterstitialAd$f;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/InterstitialAd$f;-><init>(Lcom/admob/android/ads/InterstitialAd;)V

    sget-object v2, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    sput-object v2, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    :cond_3
    sget-object v2, Lcom/admob/android/ads/InterstitialAd;->b:Ljava/util/Timer;

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd;->j:Ljava/lang/String;

    .line 539
    return-void
.end method

.method public setListener(Lcom/admob/android/ads/InterstitialAdListener;)V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admob/android/ads/InterstitialAd;->e:Ljava/lang/ref/WeakReference;

    .line 253
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/admob/android/ads/InterstitialAd;->i:Ljava/lang/String;

    .line 546
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 427
    sget-object v0, Lcom/admob/android/ads/InterstitialAd;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/InterstitialAd$d;

    invoke-direct {v1, p1, p0}, Lcom/admob/android/ads/InterstitialAd$d;-><init>(Landroid/app/Activity;Lcom/admob/android/ads/InterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method
