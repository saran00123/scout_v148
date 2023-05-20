.class public Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;
.super Ljava/lang/Object;
.source "AppFrontBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;
    }
.end annotation


# instance fields
.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mOnAppStatusListener:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$1;-><init>(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;)Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->mOnAppStatusListener:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;

    return-object p0
.end method


# virtual methods
.method public register(Landroid/app/Application;Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;)V
    .registers 3

    .line 27
    iput-object p2, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->mOnAppStatusListener:Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;

    .line 28
    iget-object p2, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unRegister(Landroid/app/Application;)V
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
