.class public Lcom/huawei/hms/hatool/b0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/huawei/hms/hatool/b0;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/huawei/hms/hatool/b0;->a:I

    return v0
.end method
