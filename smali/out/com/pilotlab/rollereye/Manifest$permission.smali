.class public final Lcom/pilotlab/rollereye/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final C2D_MESSAGE:Ljava/lang/String; = "com.pilotlab.rollereye.permission.C2D_MESSAGE"

.field public static final MESSAGE:Ljava/lang/String; = "com.pilotlab.rollereye.push.permission.MESSAGE"

.field public static final MIPUSH_RECEIVE:Ljava/lang/String; = "com.pilotlab.rollereye.permission.MIPUSH_RECEIVE"

.field public static final PROCESS_PUSH_MSG:Ljava/lang/String; = "com.pilotlab.rollereye.permission.PROCESS_PUSH_MSG"

.field public static final PUSH_PROVIDER:Ljava/lang/String; = "com.pilotlab.rollereye.permission.PUSH_PROVIDER"

.field public static final PUSH_WRITE_PROVIDER:Ljava/lang/String; = "com.pilotlab.rollereye.permission.PUSH_WRITE_PROVIDER"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
