part of petisland_core.service;

abstract class RescueService {
  Future<Rescue> create(Rescue rescue);

  Future<List<Comment>> getComments(String id);
  Future<List<RescueDonate>> getDonaters(String id);

  Future<List<RescueAccount>> getHeroJoined(String id);
  Future<bool> join(String id);

  Future<bool> like(String id);

  Future<List<Rescue>> search();
  Future<bool> unJoin(String id);

  Future<Rescue> update(Rescue rescue);
}

class RescueServiceImpl extends RescueService {
  final RescueRepository repository;

  RescueServiceImpl(this.repository);

  @override
  Future<Rescue> create(Rescue rescue) => repository.create(rescue);

  @override
  Future<List<Comment>> getComments(String id) {
    return repository.getComments(id);
  }

  @override
  Future<List<RescueDonate>> getDonaters(String id) {
    return repository.getDonaters(id);
  }

  @override
  Future<List<RescueAccount>> getHeroJoined(String id) {
    return repository.getHeroJoined(id);
  }

  @override
  Future<bool> join(String id) => repository.join(id);

  @override
  Future<bool> like(String id) => repository.like(id);

  @override
  Future<List<Rescue>> search() => repository.search();

  @override
  Future<bool> unJoin(String id) => repository.unJoin(id);

  @override
  Future<Rescue> update(Rescue rescue) => repository.update(rescue);
}