.class Lcom/google/firebase/crashlytics/internal/common/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"


# static fields
.field static final VELOCITY_CHARGING:I = 0x2

.field static final VELOCITY_FULL:I = 0x3

.field static final VELOCITY_UNPLUGGED:I = 0x1


# instance fields
.field private final level:Ljava/lang/Float;

.field private final powerConnected:Z


# direct methods
.method private constructor <init>(Ljava/lang/Float;Z)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    .line 33
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/common/BatteryState;
    .registers 3

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 72
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->isPowerConnected(Landroid/content/Intent;)Z

    move-result v0

    .line 73
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->getLevel(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 76
    :goto_18
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/crashlytics/internal/common/BatteryState;-><init>(Ljava/lang/Float;Z)V

    return-object p0
.end method

.method private static getLevel(Landroid/content/Intent;)Ljava/lang/Float;
    .registers 4

    const/4 v0, -0x1

    const-string v1, "level"

    .line 102
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    .line 103
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-eq v1, v0, :cond_1a

    if-ne p0, v0, :cond_12

    goto :goto_1a

    :cond_12
    int-to-float v0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 107
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isPowerConnected(Landroid/content/Intent;)Z
    .registers 3

    const/4 v0, -0x1

    const-string v1, "status"

    .line 86
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_b

    return v1

    :cond_b
    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x5

    if-ne p0, v0, :cond_12

    :cond_11
    const/4 v1, 0x1

    :cond_12
    return v1
.end method


# virtual methods
.method public getBatteryLevel()Ljava/lang/Float;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    return-object v0
.end method

.method public getBatteryVelocity()I
    .registers 5

    .line 55
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->level:Ljava/lang/Float;

    if-nez v0, :cond_9

    goto :goto_1b

    .line 57
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v0, v0, v2

    if-gez v0, :cond_19

    const/4 v0, 0x2

    return v0

    :cond_19
    const/4 v0, 0x3

    return v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    return v0
.end method

.method isPowerConnected()Z
    .registers 2

    .line 37
    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/internal/common/BatteryState;->powerConnected:Z

    return v0
.end method