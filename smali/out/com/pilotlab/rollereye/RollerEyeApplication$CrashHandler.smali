.class public Lcom/pilotlab/rollereye/RollerEyeApplication$CrashHandler;
.super Ljava/lang/Object;
.source "RollerEyeApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/RollerEyeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrashHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V
    .registers 2

    .line 273
    iput-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$CrashHandler;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 3

    .line 277
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 280
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->finishActivity()V

    const/4 p1, 0x0

    .line 281
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
