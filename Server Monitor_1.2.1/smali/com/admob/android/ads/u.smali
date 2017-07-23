.class public final Lcom/admob/android/ads/u;
.super Ljava/lang/Object;
.source "AssetDownloader.java"

# interfaces
.implements Lcom/admob/android/ads/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/u$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/admob/android/ads/e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/admob/android/ads/s;

.field public d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/admob/android/ads/u$a;


# direct methods
.method public constructor <init>(Lcom/admob/android/ads/u$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    .line 42
    iput-object v1, p0, Lcom/admob/android/ads/u;->c:Lcom/admob/android/ads/s;

    .line 43
    iput-object p1, p0, Lcom/admob/android/ads/u;->e:Lcom/admob/android/ads/u$a;

    .line 44
    iput-object v1, p0, Lcom/admob/android/ads/u;->d:Ljava/lang/ref/WeakReference;

    .line 45
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 130
    invoke-static {p1, p2, p3, p0}, Lcom/admob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/h;)Lcom/admob/android/ads/e;

    move-result-object v0

    .line 133
    if-eqz p4, :cond_0

    .line 134
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/admob/android/ads/e;->a(Ljava/lang/Object;)V

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method


# virtual methods
.method public final a(Lcom/admob/android/ads/e;)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const-string v7, "Failed reading asset("

    const-string v5, "AdMobSDK"

    .line 202
    invoke-interface {p1}, Lcom/admob/android/ads/e;->b()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-interface {p1}, Lcom/admob/android/ads/e;->a()[B

    move-result-object v0

    .line 206
    if-eqz v0, :cond_5

    .line 209
    const/4 v2, 0x0

    .line 211
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 220
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 221
    invoke-interface {p1}, Lcom/admob/android/ads/e;->g()Ljava/lang/Object;

    move-result-object v0

    .line 222
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/admob/android/ads/u;->c:Lcom/admob/android/ads/s;

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/s;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 233
    :try_start_1
    iget-object v1, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 234
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-virtual {p0}, Lcom/admob/android/ads/u;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/u;->e:Lcom/admob/android/ads/u$a;

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/admob/android/ads/u;->e:Lcom/admob/android/ads/u$a;

    invoke-interface {v0}, Lcom/admob/android/ads/u$a;->k()V

    .line 257
    :cond_2
    :goto_1
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 214
    const-string v3, "AdMobSDK"

    const/4 v3, 0x6

    invoke-static {v5, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const-string v3, "AdMobSDK"

    const-string v3, "couldn\'t create a Bitmap"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 242
    :cond_3
    const-string v0, "AdMobSDK"

    invoke-static {v5, v6}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed reading asset("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") as a bitmap."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_4
    invoke-virtual {p0}, Lcom/admob/android/ads/u;->c()V

    goto :goto_1

    .line 251
    :cond_5
    const-string v0, "AdMobSDK"

    invoke-static {v5, v6}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 253
    const-string v0, "AdMobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed reading asset("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_6
    invoke-virtual {p0}, Lcom/admob/android/ads/u;->c()V

    goto :goto_1
.end method

.method public final a(Lcom/admob/android/ads/e;Ljava/lang/Exception;)V
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v6, "Failed downloading assets for ad: "

    const-string v5, " "

    const-string v4, "AdMobSDK"

    .line 147
    if-eqz p2, :cond_1

    .line 149
    const-string v0, "AdMobSDK"

    invoke-static {v4, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    if-eqz p1, :cond_5

    .line 155
    invoke-interface {p1}, Lcom/admob/android/ads/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-interface {p1}, Lcom/admob/android/ads/e;->c()Ljava/net/URL;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_4

    .line 159
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 162
    :goto_0
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed downloading assets for ad: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/admob/android/ads/u;->c()V

    .line 184
    return-void

    .line 167
    :cond_1
    const-string v0, "AdMobSDK"

    invoke-static {v4, v1}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    if-eqz p1, :cond_3

    .line 173
    invoke-interface {p1}, Lcom/admob/android/ads/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {p1}, Lcom/admob/android/ads/e;->c()Ljava/net/URL;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 180
    :goto_2
    const-string v2, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed downloading assets for ad: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_5
    move-object v0, v2

    move-object v1, v2

    goto :goto_0
.end method

.method public final a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    .line 97
    iget-object v1, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 98
    if-eqz p1, :cond_3

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 101
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 105
    const-string v4, "u"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    const-string v5, "c"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_0

    move v3, v8

    .line 109
    :goto_1
    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/admob/android/ads/u;->c:Lcom/admob/android/ads/s;

    if-eqz v3, :cond_2

    .line 111
    iget-object v3, p0, Lcom/admob/android/ads/u;->c:Lcom/admob/android/ads/s;

    invoke-virtual {v3, v0}, Lcom/admob/android/ads/s;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_1

    .line 113
    iget-object v4, p0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    move v3, v7

    .line 106
    goto :goto_1

    .line 115
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v4, v0, p2, v3}, Lcom/admob/android/ads/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 118
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v4, v0, p2, v3}, Lcom/admob/android/ads/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 122
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_4
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

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

.method public final b()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/e;

    .line 87
    invoke-interface {p0}, Lcom/admob/android/ads/e;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/e;

    .line 267
    invoke-interface {v0}, Lcom/admob/android/ads/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 269
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/u;->b:Ljava/util/HashSet;

    .line 271
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/u;->d()V

    .line 274
    iget-object v0, p0, Lcom/admob/android/ads/u;->e:Lcom/admob/android/ads/u$a;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/admob/android/ads/u;->e:Lcom/admob/android/ads/u$a;

    invoke-interface {v0}, Lcom/admob/android/ads/u$a;->l()V

    .line 277
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/u;->a:Ljava/util/Hashtable;

    .line 296
    :cond_0
    return-void
.end method
