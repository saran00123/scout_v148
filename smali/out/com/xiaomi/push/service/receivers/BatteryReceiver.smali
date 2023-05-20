.class public Lcom/xiaomi/push/service/receivers/BatteryReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field public static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    const/4 p1, 0x1

    sput-boolean p1, Lcom/xiaomi/push/service/receivers/BatteryReceiver;->a:Z

    return-void

    :cond_13
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    sput-boolean p1, Lcom/xiaomi/push/service/receivers/BatteryReceiver;->a:Z

    :cond_1e
    return-void
.end method
