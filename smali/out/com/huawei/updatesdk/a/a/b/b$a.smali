.class public Lcom/huawei/updatesdk/a/a/b/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/huawei/updatesdk/a/a/b/b$a;I)I
    .registers 2

    iput p1, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->b:I

    return p1
.end method

.method static synthetic a(Lcom/huawei/updatesdk/a/a/b/b$a;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/a/a/b/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
