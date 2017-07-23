.class public Lcom/odinnet/servermonitor/activity/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field intervalChange:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/odinnet/servermonitor/activity/SettingsActivity;->intervalChange:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "serverMonitorSettings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 21
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SettingsActivity;->addPreferencesFromResource(I)V

    .line 22
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 23
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 33
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/odinnet/servermonitor/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/odinnet/servermonitor/activity/SettingsActivity;->intervalChange:Z

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "intervalChange"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    :cond_0
    invoke-virtual {p0, v0}, Lcom/odinnet/servermonitor/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/odinnet/servermonitor/activity/SettingsActivity;->finish()V

    .line 67
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 28
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 12
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x3c

    const/4 v7, 0x1

    const-string v4, "enableSound"

    const-string v5, "pollFrequency"

    .line 37
    const-string v3, "enableSound"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    const-string v3, "enableSound"

    invoke-interface {p1, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_SOUND:Z

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string v3, "enableVibrate"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    const-string v3, "enableVibrate"

    invoke-interface {p1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/odinnet/servermonitor/data/Settings;->ENABLE_VIBRATE:Z

    goto :goto_0

    .line 41
    :cond_2
    const-string v3, "startOnBoot"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    const-string v3, "startOnBoot"

    invoke-interface {p1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/odinnet/servermonitor/data/Settings;->START_ON_BOOT:Z

    goto :goto_0

    .line 43
    :cond_3
    const-string v3, "pollFrequency"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    const-string v3, "pollFrequency"

    const-string v3, "15"

    invoke-interface {p1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "intStr":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 46
    .local v1, "interval":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4

    .line 47
    const-wide/16 v1, 0x1

    .line 48
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pollFrequency"

    invoke-interface {v3, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50
    :cond_4
    sget-wide v3, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    mul-long v5, v1, v8

    mul-long/2addr v5, v10

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 51
    iput-boolean v7, p0, Lcom/odinnet/servermonitor/activity/SettingsActivity;->intervalChange:Z

    .line 53
    :cond_5
    mul-long v3, v1, v8

    mul-long/2addr v3, v10

    sput-wide v3, Lcom/odinnet/servermonitor/data/Settings;->INTERVAL:J

    goto :goto_0
.end method
