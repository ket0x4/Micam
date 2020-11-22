.class public Lmiui/reflect/Constructor;
.super Ljava/lang/Object;
.source "Constructor.java"


# instance fields
.field private mCons:Ljava/lang/reflect/Constructor;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmiui/reflect/Constructor;->mCons:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lmiui/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/NoSuchMethodException;
        }
    .end annotation

    .line 28
    new-instance p0, Lmiui/reflect/Constructor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lmiui/reflect/Constructor;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0
.end method


# virtual methods
.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/reflect/IllegalArgumentException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
