.class public final Lcom/google/firebase/iid/zzak;
.super Ljava/lang/Exception;


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/google/firebase/iid/zzak;->errorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .registers 2

    .line 4
    iget v0, p0, Lcom/google/firebase/iid/zzak;->errorCode:I

    return v0
.end method
