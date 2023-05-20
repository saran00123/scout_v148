.class public abstract Lcom/alibaba/sdk/android/push/AndroidPopupActivity;
.super Landroid/app/Activity;
.source "AndroidPopupActivity.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AndroidPopupActivity"


# instance fields
.field private popupNotifyClick:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;

    new-instance v1, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;-><init>(Lcom/alibaba/sdk/android/push/AndroidPopupActivity;Lcom/alibaba/sdk/android/push/AndroidPopupActivity$1;)V

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;-><init>(Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->popupNotifyClick:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->popupNotifyClick:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->onCreate(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 30
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->popupNotifyClick:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onNotPushData(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onParseFailed(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method protected abstract onSysNoticeOpened(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
