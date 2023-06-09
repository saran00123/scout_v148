.class Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;
.super Ljava/lang/Object;
.source "CrashlyticsAnalyticsListener.java"

# interfaces
.implements Lcom/google/firebase/analytics/connector/AnalyticsConnector$AnalyticsConnectorListener;


# static fields
.field static final CRASHLYTICS_ORIGIN:Ljava/lang/String; = "clx"

.field static final EVENT_NAME_KEY:Ljava/lang/String; = "name"

.field static final EVENT_ORIGIN_KEY:Ljava/lang/String; = "_o"

.field static final EVENT_PARAMS_KEY:Ljava/lang/String; = "params"


# instance fields
.field private breadcrumbEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

.field private crashlyticsOriginEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static notifyEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0    # Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_3

    return-void

    .line 81
    :cond_3
    invoke-interface {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private notifyEventReceivers(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "_o"

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clx"

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 71
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->crashlyticsOriginEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

    goto :goto_13

    .line 72
    :cond_11
    iget-object v0, p0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->breadcrumbEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

    .line 73
    :goto_13
    invoke-static {v0, p1, p2}, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->notifyEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onMessageTriggered(ILandroid/os/Bundle;)V
    .registers 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Analytics message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    if-nez p2, :cond_23

    return-void

    :cond_23
    const-string p1, "name"

    .line 55
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    const-string v0, "params"

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_38

    .line 60
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 63
    :cond_38
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->notifyEventReceivers(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3b
    return-void
.end method

.method public setBreadcrumbEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;)V
    .registers 2
    .param p1    # Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 44
    iput-object p1, p0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->breadcrumbEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

    return-void
.end method

.method public setCrashlyticsOriginEventReceiver(Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;)V
    .registers 2
    .param p1    # Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    iput-object p1, p0, Lcom/google/firebase/crashlytics/CrashlyticsAnalyticsListener;->crashlyticsOriginEventReceiver:Lcom/google/firebase/crashlytics/internal/analytics/AnalyticsEventReceiver;

    return-void
.end method
