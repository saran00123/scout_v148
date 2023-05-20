.class Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils$1;
.super Ljava/lang/Object;
.source "MultiLanguageUtils.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils$1;->this$0:Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 150
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 153
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->isSameWithSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 154
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->access$000(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_18
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
