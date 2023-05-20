.class public Lcom/pilotlab/rollereye/DataBase/DatabaseUtil;
.super Ljava/lang/Object;
.source "DatabaseUtil.java"


# static fields
.field private static DATABASE_PATH:Ljava/lang/String; = "/data/data/com.pilotlab.rollereye/databases/"

.field public static localDB:Ljava/lang/String; = "rollereye.db"

.field public static localDBVersion:I = 0x1

.field private static tag:Ljava/lang/String; = "DatabaseUitl"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/DataBase/DatabaseUtil;->context:Landroid/content/Context;

    return-void
.end method
