.class public Lcom/huawei/hms/push/w;
.super Ljava/lang/Object;
.source "PushConst.java"


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/push/w;->a:Ljava/nio/charset/Charset;

    return-void
.end method
