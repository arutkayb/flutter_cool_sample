abstract class DaoCrudMixin<E> {
  void create();

  void read();

  void update(E entity);

  void delete(E entity);
}
