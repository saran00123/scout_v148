.class Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;
.super Ljava/lang/Object;
.source "AndroidPopupActivity.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;
.implements Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/push/AndroidPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPopupNotifyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/sdk/android/push/AndroidPopupActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/push/AndroidPopupActivity;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;->this$0:Lcom/alibaba/sdk/android/push/AndroidPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/push/AndroidPopupActivity;Lcom/alibaba/sdk/android/push/AndroidPopupActivity$1;)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;-><init>(Lcom/alibaba/sdk/android/push/AndroidPopupActivity;)V

    return-void
.end method


# virtual methods
.method public onNotPushData(Landroid/content/Intent;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;->this$0:Lcom/alibaba/sdk/android/push/AndroidPopupActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->onNotPushData(Landroid/content/Intent;)V

    return-void
.end method

.method public onParseFailed(Landroid/content/Intent;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;->this$0:Lcom/alibaba/sdk/android/push/AndroidPopupActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->onParseFailed(Landroid/content/Intent;)V

    return-void
.end method

.method public onSysNoticeOpened(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
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

    .line 49
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/AndroidPopupActivity$MyPopupNotifyClickListener;->this$0:Lcom/alibaba/sdk/android/push/AndroidPopupActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/push/AndroidPopupActivity;->onSysNoticeOpened(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
