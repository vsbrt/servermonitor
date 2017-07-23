.class public final Lcom/admob/android/ads/aa$a;
.super Lcom/admob/android/ads/ae;
.source "AdMobFlexWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admob/android/ads/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/admob/android/ads/j;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/aa;Lcom/admob/android/ads/view/AdMobWebView;Lcom/admob/android/ads/j;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p2}, Lcom/admob/android/ads/ae;-><init>(Lcom/admob/android/ads/view/AdMobWebView;)V

    .line 82
    iput-object p3, p0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    .line 83
    iput-boolean v0, p0, Lcom/admob/android/ads/aa$a;->a:Z

    .line 84
    iput-boolean v0, p0, Lcom/admob/android/ads/aa$a;->b:Z

    .line 85
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    const-string v2, "AdMobSDK"

    .line 124
    iget-object v0, p0, Lcom/admob/android/ads/aa$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/view/AdMobWebView;

    .line 125
    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, v0, Lcom/admob/android/ads/view/AdMobWebView;->c:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected page loaded, urlThatFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admob/android/ads/aa$a;->b:Z

    .line 138
    invoke-super {p0, p1, p2}, Lcom/admob/android/ads/ae;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 141
    instance-of v1, v0, Lcom/admob/android/ads/aa;

    if-eqz v1, :cond_4

    .line 142
    check-cast v0, Lcom/admob/android/ads/aa;

    .line 143
    invoke-virtual {v0}, Lcom/admob/android/ads/aa;->b()V

    .line 146
    :cond_4
    const-string v0, "AdMobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AdMobSDK"

    const-string v0, "startResponseTimer()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v0, Lcom/admob/android/ads/aa$a$1;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/aa$a$1;-><init>(Lcom/admob/android/ads/aa$a;)V

    iput-object v0, p0, Lcom/admob/android/ads/aa$a;->f:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/aa$a;->e:Ljava/util/Timer;

    iget-object v0, p0, Lcom/admob/android/ads/aa$a;->e:Ljava/util/Timer;

    iget-object v1, p0, Lcom/admob/android/ads/aa$a;->f:Ljava/util/TimerTask;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-string v4, "AdMobSDK"

    .line 155
    const-string v0, "AdMobSDK"

    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading, url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "admob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 168
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "ready"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 171
    iget-boolean v1, p0, Lcom/admob/android/ads/aa$a;->a:Z

    if-eqz v1, :cond_1

    move v0, v5

    .line 240
    :goto_0
    return v0

    .line 176
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admob/android/ads/aa$a;->a:Z

    .line 177
    const-string v1, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "AdMobSDK"

    const-string v2, "cancelResponseTimer()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/admob/android/ads/aa$a;->e:Ljava/util/Timer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/admob/android/ads/aa$a;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_5

    .line 181
    invoke-static {v0}, Lcom/admob/android/ads/aa$a;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_5

    .line 183
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    if-eqz v0, :cond_5

    .line 185
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 186
    iget-object v0, p0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/j;->a(Z)V

    :cond_4
    move v0, v5

    .line 189
    goto :goto_0

    .line 194
    :cond_5
    iget-object v0, p0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_6

    .line 195
    iget-object v0, p0, Lcom/admob/android/ads/aa$a;->c:Lcom/admob/android/ads/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/j;->a(Z)V

    :cond_6
    move v0, v5

    .line 197
    goto :goto_0

    .line 199
    :cond_7
    const-string v2, "movie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_8

    .line 202
    invoke-static {v0}, Lcom/admob/android/ads/aa$a;->a(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_8

    .line 204
    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    if-eqz v0, :cond_8

    .line 206
    const-string v1, "play"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 209
    const-string v1, "pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 212
    const-string v1, "stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 215
    const-string v1, "remove"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 218
    const-string v1, "replay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 222
    const-string v1, "AdMobSDK"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 223
    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown actionString, admob://movie?action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move v0, v5

    .line 231
    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    const-string v1, "AdMobSDK"

    const-string v1, "Bad link URL in AdMob web view."

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/admob/android/ads/ae;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method
